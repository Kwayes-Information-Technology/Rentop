part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailAddress emailAddress,
    required Password password,
    required RepeatPassword repeatPassword,
    required PhoneNumber phoneNumber,
    required FirstName firstName,
    required LastName lastName,
    required Username username,
    required bool termsAndConditions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpState;

  factory SignUpState.intial() => SignUpState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        phoneNumber: PhoneNumber(''),
        firstName: FirstName(''),
        lastName: LastName(''),
        username: Username(''),
        repeatPassword: RepeatPassword('', ''),
        termsAndConditions: false,
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
