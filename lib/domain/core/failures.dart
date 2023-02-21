import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPhoneNumber({
    required String failedValue,
  }) = InvalidPhoneNumber<T>;
  const factory ValueFailure.invalidFirstName({
    required String failedValue,
  }) = InvalidFirstName<T>;
  const factory ValueFailure.invalidLastName({
    required String failedValue,
  }) = InvalidLastName<T>;
  const factory ValueFailure.invalidUsername({
    required String failedValue,
  }) = InvalidUsername<T>;
  const factory ValueFailure.invalidPassword({
    required String failedValue,
  }) = InvalidPassword<T>;
  const factory ValueFailure.invalidRepeatPassword({
    required String failedValue,
  }) = InvalidRepeatPassword<T>;
  const factory ValueFailure.invalidResetCode({
    required String failedValue,
  }) = InvalidResetCode<T>;
}
