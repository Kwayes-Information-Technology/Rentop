import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/core/assets.dart';

class CarSpecification {
  final Widget icon;
  final String name;
  final String slug;
  final int id;

  CarSpecification({
    required this.icon,
    required this.name,
    required this.id,
    required this.slug,
  });

  static List<CarSpecification> fromData(List<dynamic> data) {
    final List<CarSpecification> carSpecifications = [];
    for (final element in data) {
      carSpecifications.add(
        CarSpecification(
          id: int.parse(element['term_id'].toString()),
          name: element['name'],
          slug: element['slug'],
          icon: Assets.getImageFromString(element['meta_value']),
        ),
      );
    }
    return carSpecifications;
  }
}

// List<CarSpecification> tempCarSpecifications = [
//   CarSpecification(
//     icon: 'assets/images/icons/car_features/automatic-transmission.png',
//     name: 'Auto Transmission',
//     id: 'auto-transmission',
//   ),
//   CarSpecification(
//     icon: 'assets/images/icons/car_features/chair.png',
//     name: 'Fits 4 Passengers',
//     id: 'fits-4-passengers',
//   ),
//   CarSpecification(
//     icon: 'assets/images/icons/car_features/suitcase.png',
//     name: 'Fits 3 Bag(s)',
//     id: 'fits-3-bag',
//   ),
//   CarSpecification(
//     icon: 'assets/images/icons/car_features/car.png',
//     name: 'GCC Specs: Yes',
//     id: 'gcc-specs',
//   ),
// ];
