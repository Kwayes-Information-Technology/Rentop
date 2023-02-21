import 'package:dartz/dartz.dart';
import 'package:rentop/infrastructure/models/car.dart';

abstract class IFavouritesRepository {
  Future<Option<CarRequestResponse>> getFavourites({
    required int pageNumber,
    required String favouritesId,
  });
}
