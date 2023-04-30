import 'package:dartz/dartz.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/core/value_objects.dart';

abstract class IContactRepository {
  Future<Either<ApiFailure, Unit>> sendContactForm({
    required FirstName firstName,
    required LastName lastName,
    required EmailAddress email,
    required PhoneNumber phone,
    required String message,
  });
}
