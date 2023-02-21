import 'package:dartz/dartz.dart';
import 'package:rentop/infrastructure/models/listings.dart';

abstract class IListingsRepository {
  Future<Option<Listings>> getListings();
}
