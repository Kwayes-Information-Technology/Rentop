import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rentop/infrastructure/models/car_feature.dart';
import 'package:rentop/infrastructure/models/car_review.dart';
import 'package:rentop/infrastructure/models/car_specification.dart';
import 'package:rentop/infrastructure/models/meta.dart';

class CarRequestResponse {
  final Meta meta;
  final List<Car> cars;

  CarRequestResponse({
    required this.meta,
    required this.cars,
  });

  static CarRequestResponse fromData(Map<String, dynamic> data) {
    return CarRequestResponse(
      meta: Meta.fromData(data['meta']),
      cars: Car.fromData(data['cars']),
    );
  }
}

class Car {
  final int id;
  final int author;
  final List<String> images;
  final double price;
  final String name;
  final String content;
  final String geoCity;
  final List<CarSpecification> carSpecifications;
  final List<CarFeature> carFeatures;
  final double? rating;
  final double? valueRating;
  final double? commuincationRating;
  final double? checkinRating;
  final double? cleanlinessRating;
  final double? accuracyRating;
  final double? locationRating;
  final String authorName;
  final String authorAvater;
  final int totalReviews;
  final LatLng location;
  final List<CarReview> reviews;

  Car({
    required this.id,
    required this.author,
    required this.content,
    required this.images,
    required this.name,
    required this.price,
    required this.geoCity,
    required this.carSpecifications,
    required this.carFeatures,
    required this.authorAvater,
    required this.authorName,
    required this.rating,
    required this.accuracyRating,
    required this.checkinRating,
    required this.cleanlinessRating,
    required this.commuincationRating,
    required this.locationRating,
    required this.valueRating,
    required this.totalReviews,
    required this.location,
    required this.reviews,
  });

  static List<String> imagesFromData(List<dynamic> data) {
    final List<String> images = [];
    for (final element in data) {
      images.add(element.toString());
    }
    return images;
  }

  static List<Car> fromData(List<dynamic> data) {
    final List<Car> cars = [];
    for (final element in data) {
      cars.add(
        Car(
          id: element['id'],
          author: element['author'],
          images: imagesFromData(element['images']),
          name: element['name'],
          content: element['content'],
          price: double.parse(element['price'].toString()),
          geoCity: element['geo_city'],
          carSpecifications:
              CarSpecification.fromData(element['car_specifications']),
          carFeatures: CarFeature.fromData(element['car_features']),
          authorName: element['author_name'],
          authorAvater: element['author_avater'],
          accuracyRating: double.parse(element['accuracy_rating'].toString()),
          cleanlinessRating:
              double.parse(element['cleanliness_rating'].toString()),
          commuincationRating:
              double.parse(element['communication_rating'].toString()),
          locationRating: double.parse(element['location_rating'].toString()),
          valueRating: double.parse(element['value_rating'].toString()),
          checkinRating: double.parse(element['check_in_rating'].toString()),
          rating: (double.parse(element['accuracy_rating'].toString()) +
                  double.parse(element['cleanliness_rating'].toString()) +
                  double.parse(element['communication_rating'].toString()) +
                  double.parse(element['location_rating'].toString()) +
                  double.parse(element['value_rating'].toString()) +
                  double.parse(element['check_in_rating'].toString())) /
              6,
          totalReviews: int.parse(element['totalReviews'].toString()),
          location: LatLng(
            double.parse(
              element['location_lat'].toString(),
            ),
            double.parse(
              element['location_long'].toString(),
            ),
          ),
          reviews: CarReview.fromData(element['reviews']),
        ),
      );
    }
    return cars;
  }
}
