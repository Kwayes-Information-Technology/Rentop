import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_api_failure.freezed.dart';

@freezed
abstract class ResetPasswordApiFailure with _$ResetPasswordApiFailure {
  const factory ResetPasswordApiFailure.badEmail() = BadEmail;
  const factory ResetPasswordApiFailure.badRequest() = BadRequest;
  const factory ResetPasswordApiFailure.serverError() = ServerError;
}
