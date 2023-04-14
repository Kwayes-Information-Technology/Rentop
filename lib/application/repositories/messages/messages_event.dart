part of 'messages_bloc.dart';

@freezed
class MessagesEvent with _$MessagesEvent {
  const factory MessagesEvent.fetchMessagesData() = FetchMessagesData;
  const factory MessagesEvent.refreshData() = RefreshData;
  const factory MessagesEvent.sendMessage() = SendMessage;
  const factory MessagesEvent.selectedConversationChanged(
    Conversation? conversation,
  ) = SelectedConversationChanged;
  const factory MessagesEvent.unseenMessages() = UnseenMessages;
  const factory MessagesEvent.scrollDown() = ScrollDown;
  const factory MessagesEvent.newConversationChanged(bool value) =
      NewConversationChanged;
}
