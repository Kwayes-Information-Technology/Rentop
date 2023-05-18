import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_category.dart';
import 'package:rentop/infrastructure/models/car_feature.dart';
import 'package:rentop/infrastructure/models/car_region.dart';
import 'package:rentop/infrastructure/models/car_specification.dart';

class Listings {
  final List<CarSpecification> carSpecifications;
  final List<CarFeature> carFeatures;
  final List<CarRegion> carRegions;
  final List<CarCategory> carCategories;
  final List<CarBrand> carBrands;

  Listings({
    required this.carCategories,
    required this.carFeatures,
    required this.carRegions,
    required this.carSpecifications,
    required this.carBrands,
  });

  factory Listings.fromData(Map<String, dynamic> data) {
    return Listings(
      carCategories: CarCategory.fromData(data['car_categories']),
      carFeatures: CarFeature.fromData(data['car_features']),
      carRegions: CarRegion.fromData(data['car_regions']),
      carSpecifications: CarSpecification.fromData(data['car_specifications']),
      carBrands: CarBrand.fromData(data['car_brands']),
    );
  }
}
