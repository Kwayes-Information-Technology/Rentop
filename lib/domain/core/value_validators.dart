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
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateRepeatPassword(
  String password,
  String repeatPassword,
) {
  if (password == repeatPassword && password.isNotEmpty) {
    return right(repeatPassword);
  } else {
    return left(
        ValueFailure.invalidRepeatPassword(failedValue: repeatPassword));
  }
}

Either<ValueFailure<String>, String> validateResetCode(String input) {
  const resetCodeRegex = r'^\d{4}$';
  if (RegExp(resetCodeRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidResetCode(failedValue: input));
  }
}
