import 'package:dartz/dartz.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_category.dart';
import 'package:rentop/infrastructure/models/car_region.dart';

abstract class ICarsRepository {
  Future<Option<CarRequestResponse>> getCars({
    required int pageNumber,
    required CarRegion? carRegion,
    required CarCategory? carCategory,
    required CarBrand? carBrand,
    required int? listPerPage,
  });
  Future<Option<List<Car>>> getTopCars();
}
