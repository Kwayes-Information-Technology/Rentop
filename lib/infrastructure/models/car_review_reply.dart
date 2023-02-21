class CarReviewReply {
  final String displayName;
  final String replyMsg;

  CarReviewReply({
    required this.displayName,
    required this.replyMsg,
  });

  static List<CarReviewReply> fromData(List<dynamic> data) {
    final List<CarReviewReply> carReviewReplies = [];
    for (final element in data) {
      carReviewReplies.add(
        CarReviewReply(
          displayName: element['comment_author'],
          replyMsg: element['comment_content'],
        ),
      );
    }
    return carReviewReplies;
  }
}
