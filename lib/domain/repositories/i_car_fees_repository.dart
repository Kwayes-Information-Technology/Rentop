import 'package:dartz/dartz.dart';
import 'package:rentop/infrastructure/models/car_fees.dart';

abstract class ICarFeesRepository {
  Future<Option<CarFees>> getCarFees();
}
