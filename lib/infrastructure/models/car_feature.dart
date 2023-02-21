import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/core/assets.dart';

class CarFeature {
  final int id;
  final String name;
  final String slug;
  final Widget icon;

  CarFeature({
    required this.id,
    required this.name,
    required this.icon,
    required this.slug,
  });

  static List<CarFeature> fromData(List<dynamic> data) {
    final List<CarFeature> carFeatures = [];
    for (final element in data) {
      carFeatures.add(
        CarFeature(
          id: int.parse(element['term_id'].toString()),
          name: element['name'],
          slug: element['slug'],
          icon: Assets.getImageFromString(element['meta_value']),
        ),
      );
    }
    return carFeatures;
  }
}
