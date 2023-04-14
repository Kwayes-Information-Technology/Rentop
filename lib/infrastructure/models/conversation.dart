import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/message.dart';
import 'package:rentop/infrastructure/models/meta.dart';
import 'package:rentop/infrastructure/models/profile.dart';

class ConversationRequestResponse {
  final Meta meta;
  final List<Conversation> conversations;

  ConversationRequestResponse({
    required this.meta,
    required this.conversations,
  });

  static ConversationRequestResponse fromData(Map<String, dynamic> data) {
    return ConversationRequestResponse(
      meta: Meta.fromData(data['meta']),
      conversations: Conversation.fromData(data['messages']),
    );
  }
}

class Conversation {
  final int? id;
  final Car car;
  final List<Message> messages;
  final int unseenMessages;
  final int messagesCount;
  final Profile sender;
  final Profile receiver;

  Conversation({
    required this.id,
    required this.car,
    required this.messages,
    required this.unseenMessages,
    required this.messagesCount,
    required this.receiver,
    required this.sender,
  });

  static List<Conversation> fromData(List<dynamic> data) {
    final List<Conversation> conversations = [];
    for (final element in data) {
      conversations.add(
        Conversation(
          id: element['id'],
          car: Car.fromSingleData(element['car']),
          messages: Message.fromData(element['messages']),
          unseenMessages: element['unseen_messages'],
          messagesCount: int.parse(element['messages_count']),
          receiver: Profile.fromJson(element['receiver']),
          sender: Profile.fromJson(element['sender']),
        ),
      );
    }
    return conversations;
  }
}
