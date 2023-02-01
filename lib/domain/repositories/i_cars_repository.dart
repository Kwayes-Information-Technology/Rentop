import 'package:dartz/dartz.dart';
import 'package:rentop/infrastructure/models/car.dart';

abstract class ICarsRepository {
  Future<Option<List<Car>>> getCars();
}
