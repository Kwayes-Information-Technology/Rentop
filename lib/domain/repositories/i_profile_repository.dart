import 'package:dartz/dartz.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/profile.dart';

abstract class IProfileRepository {
  Future<Option<Profile>> getProfile();
  Future<Option<List<Car>>> getFavourites();
  Future<Either<ApiFailure, Unit>> addFavourite({required String carId});
  Future<Either<ApiFailure, Unit>> removeFavourite({required String carId});
  Future<Either<ApiFailure, Unit>> updateBillingInfo({
    required String firstName,
    required String lastName,
    required String companyName,
    required String country,
    required String address1,
    required String address2,
    required String city,
    required String state,
    required String postcode,
    required String email,
    required String phoneNumber,
  });
  Future<Either<ApiFailure, Unit>> updateShippingInfo({
    required String firstName,
    required String lastName,
    required String companyName,
    required String country,
    required String address1,
    required String address2,
    required String city,
    required String state,
    required String postcode,
  });
  Future<Either<ApiFailure, Unit>> updateAccountDetails({
    required String firstName,
    required String lastName,
    required String displayName,
  });
  Future<Either<ApiFailure, Unit>> deleteMyAccount({
    required String reason,
  });
}
