part of 'messages_bloc.dart';

@freezed
abstract class MessagesState with _$MessagesState {
  const factory MessagesState({
    required List<Conversation> conversations,
    required Conversation? selectedConversation,
    required int totalPages,
    required int currentPage,
    required bool newConversation,
    required TextEditingController textEditingController,
    required ScrollController scrollController,
    required RefreshController refreshController,
  }) = _MessagesState;

  factory MessagesState.initial() => MessagesState(
        conversations: [],
        selectedConversation: null,
        newConversation: false,
        totalPages: 0,
        currentPage: 0,
        refreshController: RefreshController(initialRefresh: true),
        scrollController: ScrollController(),
        textEditingController: TextEditingController(),
      );
}
