part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailAddressChanged(String email) =
      EmailAddressChanged;
  const factory SignUpEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignUpEvent.repeatPasswordChanged(String password) =
      RepeatPasswordChanged;
  const factory SignUpEvent.phoneNumberChanged(String phone) =
      PhoneNumberChanged;
  const factory SignUpEvent.firstNameChagned(String firstName) =
      FirstNameChanged;
  const factory SignUpEvent.lastNameChanged(String lastName) = LastNameChanged;
  const factory SignUpEvent.usernameChanged(String username) = UsernameChanged;
  const factory SignUpEvent.termsAndConditionsChanged(bool check) =
      TermsAndConditionsChanged;
  const factory SignUpEvent.btnPressed() = BtnPressed;
  const factory SignUpEvent.resetState() = ResetState;
}
