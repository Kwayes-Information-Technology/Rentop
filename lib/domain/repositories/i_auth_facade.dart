import 'package:dartz/dartz.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/core/reset_password_api_failure.dart';
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
  Future<Either<ResetPasswordApiFailure, Unit>> sendResetCode({
    required EmailAddress emailAddress,
  });
  Future<Either<ResetPasswordApiFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
    required ResetCode code,
    required Password password,
  });
  Future<Either<ResetPasswordApiFailure, Unit>> validateResetCode({
    required EmailAddress emailAddress,
    required ResetCode code,
  });
}
