class Message {
  final int id;
  final String text;
  final DateTime createdAt;
  final bool sendByMe;
  final int senderId;
  final bool active;

  Message({
    required this.id,
    required this.text,
    required this.createdAt,
    required this.sendByMe,
    required this.senderId,
    required this.active,
  });

  static List<Message> fromData(List<dynamic> data) {
    final List<Message> messages = [];
    for (final element in data) {
      messages.add(
        Message(
          id: element['id'],
          text: element['text'],
          createdAt: DateTime.parse(element['created_at']),
          sendByMe: element['sendByMe'],
          senderId: element['senderId'],
          active: element['active'] == 1 ? true : false,
        ),
      );
    }
    return messages;
  }
}
