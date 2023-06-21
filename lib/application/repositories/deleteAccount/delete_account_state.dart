part of 'delete_account_bloc.dart';

@freezed
abstract class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState({
    required String reason,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _DeleteAccountState;

  factory DeleteAccountState.initial() => DeleteAccountState(
        reason: "",
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
