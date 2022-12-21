import 'package:dartz/dartz.dart';
import 'package:rentop/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneRegex =
      r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$';
  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateFirstName(String input) {
  const nameRegex = r'^[a-z A-Z,.\-]+$';
  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidFirstName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateLastName(String input) {
  const nameRegex = r'^[a-z A-Z,.\-]+$';
  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidLastName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  const usernameRegex = r'^[A-Za-z][A-Za-z0-9_]{7,29}$';
  if (RegExp(usernameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}
