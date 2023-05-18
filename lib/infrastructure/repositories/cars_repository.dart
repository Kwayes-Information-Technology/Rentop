import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_cars_repository.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_category.dart';
import 'package:rentop/infrastructure/models/car_region.dart';

@LazySingleton(as: ICarsRepository)
class CarsRepository implements ICarsRepository {
  CarsRepository();

  @override
  Future<Option<CarRequestResponse>> getCars({
    required int pageNumber,
    required CarRegion? carRegion,
    required CarCategory? carCategory,
    required CarBrand? carBrand,
    required int? listPerPage,
  }) async {
    String url = "${dotenv.env['RENTOP_API_URL']}cars?page=$pageNumber";
    if (carRegion != null) {
      url += "&car_region=${carRegion.id}";
    }
    if (carBrand != null) {
      url += "&car_brand=${carBrand.id}";
    }
    if (carCategory != null) {
      url += "&car_category=${carCategory.id}";
    }
    if (listPerPage != null) {
      url += "&list_per_page=$listPerPage";
    }
    final Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return optionOf(CarRequestResponse.fromData(jsonDecode(response.body)));
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<Option<List<Car>>> getTopCars() async {
    final String url = "${dotenv.env['RENTOP_API_URL']}cars?top_listing=true";
    final Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return optionOf(Car.fromData(jsonDecode(response.body)['cars']));
    } else {
      return optionOf(null);
    }
  }
}
