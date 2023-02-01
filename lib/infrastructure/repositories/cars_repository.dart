import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_cars_repository.dart';
import 'package:rentop/infrastructure/models/car.dart';

@LazySingleton(as: ICarsRepository)
class CarsRepository implements ICarsRepository {
  CarsRepository();

  @override
  Future<Option<List<Car>>> getCars() async {
    final Response response =
        await get(Uri.parse("${dotenv.env['RENTOP_API_URL']}/posts"));
    return optionOf(Car.fromData(jsonDecode(response.body)['data']));
  }
}
