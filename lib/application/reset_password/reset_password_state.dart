part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required EmailAddress emailAddress,
    required ResetCode code,
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<ResetPasswordApiFailure, Unit>>
        codeSentFailureOrSuccessOption,
    required Option<Either<ResetPasswordApiFailure, Unit>>
        validateCodeFailureOrSuccessOption,
    required Option<Either<ResetPasswordApiFailure, Unit>>
        passwordResetFailureOrSuccessOption,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(
        emailAddress: EmailAddress(''),
        code: ResetCode(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        codeSentFailureOrSuccessOption: none(),
        validateCodeFailureOrSuccessOption: none(),
        passwordResetFailureOrSuccessOption: none(),
      );
}
