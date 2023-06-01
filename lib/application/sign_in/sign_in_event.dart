part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailAddressChanged(String email) =
      EmailAddressChanged;
  const factory SignInEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignInEvent.btnPressed() = BtnPressed;
  const factory SignInEvent.resetState() = ResetState;
}
