import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentop/domain/repositories/i_messages_repository.dart';
import 'package:rentop/infrastructure/models/conversation.dart';

part 'messages_event.dart';
part 'messages_state.dart';
part 'messages_bloc.freezed.dart';

@injectable
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final IMessagesRepository _messagesRepository;

  MessagesBloc(this._messagesRepository) : super(MessagesState.initial());

  @override
  Stream<MessagesState> mapEventToState(
    MessagesEvent event,
  ) async* {
    yield* event.map(
      fetchMessagesData: (e) async* {
        if (state.currentPage <= state.totalPages) {
          final conversations = await _messagesRepository.getMessages(
            pageNumber: state.currentPage,
          );
          yield conversations.fold(
            () {
              state.refreshController.loadFailed();
              return state.copyWith(
                conversations: [],
              );
            },
            (data) {
              final List<Conversation> conversations = [];
              conversations.addAll(state.conversations);
              conversations.addAll(data.conversations);
              state.refreshController.loadComplete();
              return state.copyWith(
                conversations: conversations,
                totalPages: data.meta.totalPages,
                currentPage: data.meta.currentPage + 1,
              );
            },
          );
        } else {
          state.refreshController.loadNoData();
        }
      },
      refreshData: (e) async* {
        yield state.copyWith(
          conversations: [],
          currentPage: 1,
          totalPages: 0,
        );
        final conversations = await _messagesRepository.getMessages(
          pageNumber: state.currentPage,
        );
        yield conversations.fold(
          () {
            state.refreshController.refreshFailed();
            return state.copyWith(
              conversations: [],
            );
          },
          (data) {
            state.refreshController.refreshCompleted();
            return state.copyWith(
              conversations: data.conversations,
              totalPages: data.meta.totalPages,
              currentPage: data.meta.currentPage + 1,
              selectedConversation: (state.selectedConversation != null)
                  ? data.conversations.singleWhere(
                      (element) => element.id == state.selectedConversation!.id,
                    )
                  : null,
            );
          },
        );
      },
      sendMessage: (e) async* {
        final message = state.textEditingController.text;

        if (message.isNotEmpty && state.selectedConversation != null) {
          if (state.selectedConversation!.id != null) {
            await _messagesRepository.sendMessage(
              conversationId: state.selectedConversation!.id!,
              message: message,
            );
            state.textEditingController.clear();
            add(const RefreshData());
          } else {
            final response = await _messagesRepository.createConversation(
              authorId: state.selectedConversation!.receiver.id!,
              listingId: state.selectedConversation!.car.id,
              title: state.selectedConversation!.car.name,
              message: message,
            );
            yield response.fold(
              (failure) {
                return state.copyWith();
              },
              (id) {
                return state.copyWith(
                  selectedConversation: Conversation(
                    id: id,
                    car: state.selectedConversation!.car,
                    messages: state.selectedConversation!.messages,
                    unseenMessages: state.selectedConversation!.unseenMessages,
                    messagesCount: state.selectedConversation!.messagesCount,
                    receiver: state.selectedConversation!.receiver,
                    sender: state.selectedConversation!.sender,
                  ),
                );
              },
            );
            state.textEditingController.clear();
            add(const RefreshData());
          }
        }
      },
      selectedConversationChanged: (e) async* {
        yield state.copyWith(selectedConversation: e.conversation);
        if (e.conversation != null && e.conversation!.unseenMessages > 0) {
          add(const UnseenMessages());
        }
      },
      unseenMessages: (e) async* {
        if (state.selectedConversation != null) {
          await _messagesRepository.seenMessages(
            conversationId: state.selectedConversation!.id!,
          );
          add(const RefreshData());
        }
      },
      scrollDown: (e) async* {
        if (state.scrollController.hasClients) {
          state.scrollController.animateTo(
            state.scrollController.position.maxScrollExtent,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 500),
          );
        }
      },
      newConversationChanged: (e) async* {
        yield state.copyWith(newConversation: e.value);
      },
    );
  }
}
