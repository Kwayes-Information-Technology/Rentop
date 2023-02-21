import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_car_fees_repository.dart';
import 'package:rentop/infrastructure/models/car_fees.dart';

@LazySingleton(as: ICarFeesRepository)
class CarFeesRepository implements ICarFeesRepository {
  CarFeesRepository();

  @override
  Future<Option<CarFees>> getCarFees() async {
    final Response response =
        await get(Uri.parse("${dotenv.env['RENTOP_API_URL']}car_fees"));
    if (response.statusCode == 200) {
      return optionOf(CarFees.fromData(jsonDecode(response.body)));
    } else {
      return optionOf(null);
    }
  }
}
