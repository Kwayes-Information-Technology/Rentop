import 'package:rentop/infrastructure/models/car_review_reply.dart';

class CarReview {
  final String author;
  final String content;
  final double rating;
  final String authorAvater;
  final DateTime date;
  final List<CarReviewReply> replies;

  CarReview({
    required this.author,
    required this.authorAvater,
    required this.content,
    required this.rating,
    required this.date,
    required this.replies,
  });

  static List<CarReview> fromData(List<dynamic> data) {
    final List<CarReview> carReviews = [];
    for (final element in data) {
      carReviews.add(
        CarReview(
          author: element['review_author'],
          authorAvater: element['review_author_avater'],
          content: element['review_content'],
          rating: double.parse(element['review_rating'].toString()),
          date: DateTime.parse(element['review_date']),
          replies: CarReviewReply.fromData(element['replies']),
        ),
      );
    }
    return carReviews;
  }
}
