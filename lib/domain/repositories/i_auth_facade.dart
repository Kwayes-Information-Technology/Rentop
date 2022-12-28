import 'package:dartz/dartz.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/core/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<ApiFailure, Unit>> signUpWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required PhoneNumber phoneNumber,
    required FirstName firstName,
    required LastName lastName,
    required Username username,
  });
  Future<Either<ApiFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<ApiFailure, Unit>> validateUserToken();
  Future<void> signOut();
}
