part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.emailAddressChanged(String email) =
      EmailAddressChanged;
  const factory ResetPasswordEvent.sendResetCode() = SendResetCode;
  const factory ResetPasswordEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory ResetPasswordEvent.resetPassword() = ResetPassword;
  const factory ResetPasswordEvent.resetCodeChanged(String code) =
      ResetCodeChanged;
  const factory ResetPasswordEvent.validateResetCode() = ValidateResetCode;
}
