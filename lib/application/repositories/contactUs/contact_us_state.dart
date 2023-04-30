part of 'contact_us_bloc.dart';

@freezed
abstract class ContactUsState with _$ContactUsState {
  const factory ContactUsState({
    required FirstName firstName,
    required LastName lastName,
    required EmailAddress email,
    required PhoneNumber phone,
    required String message,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _ContactUsState;

  factory ContactUsState.initial() => ContactUsState(
        firstName: FirstName(""),
        lastName: LastName(""),
        email: EmailAddress(""),
        phone: PhoneNumber(""),
        message: "",
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
