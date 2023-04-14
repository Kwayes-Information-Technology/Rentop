import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rentop/infrastructure/models/addons.dart';
import 'package:rentop/infrastructure/models/car_feature.dart';
import 'package:rentop/infrastructure/models/car_review.dart';
import 'package:rentop/infrastructure/models/car_specification.dart';
import 'package:rentop/infrastructure/models/meta.dart';
import 'package:rentop/infrastructure/models/profile.dart';

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
  final List<String> images;
  final double price;
  final double? weekendPrice;
  final String? securityDeposit;
  final double? longTermWeekDiscount;
  final double? longTermMonthDiscount;
  final int? reservationLengthMin;
  final int? reservationLengthMax;
  final bool instant;
  final String name;
  final String content;
  final String geoCity;
  final List<DateTime> bookedTimes;
  final List<DateTime> pendingTimes;
  final List<DateTime> unavailableTimes;
  final List<CarSpecification> carSpecifications;
  final List<CarFeature> carFeatures;
  final List<Addons> addons;
  final double? rating;
  final double? valueRating;
  final double? commuincationRating;
  final double? checkinRating;
  final double? cleanlinessRating;
  final double? accuracyRating;
  final double? locationRating;
  final LatLng location;
  final List<CarReview> reviews;
  final String? requirements;
  final Profile author;

  Car({
    required this.id,
    required this.content,
    required this.images,
    required this.name,
    required this.price,
    required this.weekendPrice,
    required this.securityDeposit,
    required this.longTermWeekDiscount,
    required this.longTermMonthDiscount,
    required this.reservationLengthMin,
    required this.reservationLengthMax,
    required this.instant,
    required this.geoCity,
    required this.bookedTimes,
    required this.pendingTimes,
    required this.unavailableTimes,
    required this.carSpecifications,
    required this.carFeatures,
    required this.addons,
    required this.rating,
    required this.accuracyRating,
    required this.checkinRating,
    required this.cleanlinessRating,
    required this.commuincationRating,
    required this.locationRating,
    required this.valueRating,
    required this.location,
    required this.reviews,
    required this.requirements,
    required this.author,
  });

  static int? returnIntFromString(dynamic element) {
    if (element == null || element == "" || element == '0') {
      return null;
    } else {
      return int.parse(element.toString());
    }
  }

  static List<DateTime> returnDateTimeFromTimeStamp(List<dynamic> timestamps) {
    final List<DateTime> dateTimes = [];
    for (final element in timestamps) {
      dateTimes.add(DateTime.fromMillisecondsSinceEpoch(
        element * 1000,
        isUtc: true,
      ));
    }
    return dateTimes;
  }

  static double? doubleFromString(dynamic element) {
    if (element == null || element == "") {
      return null;
    } else {
      return double.parse(element.toString());
    }
  }

  static double? getTotalRating(
    dynamic accuracyRating,
    dynamic cleanlinessRating,
    dynamic communicationRating,
    dynamic locationRating,
    dynamic valueRating,
    dynamic checkinRating,
  ) {
    if (accuracyRating == null ||
        cleanlinessRating == null ||
        communicationRating == null ||
        locationRating == null ||
        valueRating == null ||
        checkinRating == null) {
      return null;
    } else {
      return (double.parse(accuracyRating.toString()) +
              double.parse(cleanlinessRating.toString()) +
              double.parse(communicationRating.toString()) +
              double.parse(locationRating.toString()) +
              double.parse(valueRating.toString()) +
              double.parse(checkinRating.toString())) /
          6;
    }
  }

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
          images: imagesFromData(element['rz_gallery']),
          name: element['post_title'],
          content: element['post_content'],
          price: double.parse(element['rz_price'].toString()),
          weekendPrice: doubleFromString(element['rz_price_weekend']),
          longTermWeekDiscount: doubleFromString(element['rz_long_term_week']),
          longTermMonthDiscount:
              doubleFromString(element['rz_long_term_month']),
          securityDeposit: element['rz_deposit'],
          instant: element['rz_instant'] == "1" ? true : false,
          geoCity: element['rz_location__geo_city'],
          bookedTimes: element['rz_booking_booked'] != null
              ? returnDateTimeFromTimeStamp(element['rz_booking_booked'])
              : [],
          pendingTimes: element['rz_booking_pending'] != null
              ? returnDateTimeFromTimeStamp(element['rz_booking_pending'])
              : [],
          unavailableTimes: element['rz_booking_unavailable'] != null
              ? returnDateTimeFromTimeStamp(element['rz_booking_unavailable'])
              : [],
          reservationLengthMin:
              returnIntFromString(element['rz_reservation_length_min']),
          reservationLengthMax:
              returnIntFromString(element['rz_reservation_length_max']),
          carSpecifications:
              CarSpecification.fromData(element['rz_specifications']),
          carFeatures: CarFeature.fromData(element['rz_features']),
          accuracyRating:
              doubleFromString(element['rz_review_rating_average_accuracy']),
          cleanlinessRating:
              doubleFromString(element['rz_review_rating_average_cleanliness']),
          commuincationRating: doubleFromString(
              element['rz_review_rating_average_communication']),
          locationRating:
              doubleFromString(element['rz_review_rating_average_location']),
          valueRating:
              doubleFromString(element['rz_review_rating_average_value']),
          checkinRating:
              doubleFromString(element['rz_review_rating_average_check-in']),
          rating: getTotalRating(
              element['rz_review_rating_average_accuracy'],
              element['rz_review_rating_average_cleanliness'],
              element['rz_review_rating_average_communication'],
              element['rz_review_rating_average_location'],
              element['rz_review_rating_average_value'],
              element['rz_review_rating_average_check-in']),
          location: LatLng(
            double.parse(
              element['rz_location__lat'].toString(),
            ),
            double.parse(
              element['rz_location__lng'].toString(),
            ),
          ),
          reviews: CarReview.fromData(element['rz_reviews']),
          addons: Addons.fromData(element['rz_addons']),
          requirements: element['rz_requirements'],
          author: Profile.fromJson(element['author']),
        ),
      );
    }
    return cars;
  }

  static Car fromSingleData(dynamic data) {
    return Car(
      id: data['id'],
      images: imagesFromData(data['rz_gallery']),
      name: data['post_title'],
      content: data['post_content'],
      price: double.parse(data['rz_price'].toString()),
      weekendPrice: doubleFromString(data['rz_price_weekend']),
      longTermWeekDiscount: doubleFromString(data['rz_long_term_week']),
      longTermMonthDiscount: doubleFromString(data['rz_long_term_month']),
      securityDeposit: data['rz_deposit'],
      instant: data['rz_instant'] == "1" ? true : false,
      geoCity: data['rz_location__geo_city'],
      bookedTimes: data['rz_booking_booked'] != null
          ? returnDateTimeFromTimeStamp(data['rz_booking_booked'])
          : [],
      pendingTimes: data['rz_booking_pending'] != null
          ? returnDateTimeFromTimeStamp(data['rz_booking_pending'])
          : [],
      unavailableTimes: data['rz_booking_unavailable'] != null
          ? returnDateTimeFromTimeStamp(data['rz_booking_unavailable'])
          : [],
      reservationLengthMin:
          returnIntFromString(data['rz_reservation_length_min']),
      reservationLengthMax:
          returnIntFromString(data['rz_reservation_length_max']),
      carSpecifications: CarSpecification.fromData(data['rz_specifications']),
      carFeatures: CarFeature.fromData(data['rz_features']),
      accuracyRating:
          doubleFromString(data['rz_review_rating_average_accuracy']),
      cleanlinessRating:
          doubleFromString(data['rz_review_rating_average_cleanliness']),
      commuincationRating:
          doubleFromString(data['rz_review_rating_average_communication']),
      locationRating:
          doubleFromString(data['rz_review_rating_average_location']),
      valueRating: doubleFromString(data['rz_review_rating_average_value']),
      checkinRating:
          doubleFromString(data['rz_review_rating_average_check-in']),
      rating: getTotalRating(
          data['rz_review_rating_average_accuracy'],
          data['rz_review_rating_average_cleanliness'],
          data['rz_review_rating_average_communication'],
          data['rz_review_rating_average_location'],
          data['rz_review_rating_average_value'],
          data['rz_review_rating_average_check-in']),
      location: LatLng(
        double.parse(
          data['rz_location__lat'].toString(),
        ),
        double.parse(
          data['rz_location__lng'].toString(),
        ),
      ),
      reviews: CarReview.fromData(data['rz_reviews']),
      addons: Addons.fromData(data['rz_addons']),
      requirements: data['rz_requirements'],
      author: Profile.fromJson(data['author']),
    );
  }
}
