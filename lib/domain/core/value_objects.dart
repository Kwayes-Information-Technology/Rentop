import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:rentop/domain/core/errors.dart';
import 'package:rentop/domain/core/failures.dart';
import 'package:rentop/domain/core/value_validators.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhoneNumber(input));
  }

  const PhoneNumber._(this.value);
}

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FirstName(String input) {
    return FirstName._(validateFirstName(input));
  }

  const FirstName._(this.value);
}

class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LastName(String input) {
    return LastName._(validateLastName(input));
  }

  const LastName._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(validateUsername(input));
  }

  const Username._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}

class RepeatPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RepeatPassword(String password, repeatPassword) {
    return RepeatPassword._(validateRepeatPassword(password, repeatPassword));
  }

  const RepeatPassword._(this.value);
}

class ResetCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ResetCode(String input) {
    return ResetCode._(validateResetCode(input));
  }

  const ResetCode._(this.value);
}
