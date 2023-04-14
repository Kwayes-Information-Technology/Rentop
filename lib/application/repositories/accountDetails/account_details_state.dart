part of 'account_details_bloc.dart';

@freezed
abstract class AccountDetailsState with _$AccountDetailsState {
  const factory AccountDetailsState({
    required TextEditingController firstName,
    required TextEditingController lastName,
    required TextEditingController displayName,
    required TextEditingController mobilePhone,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _AccountDetailsState;

  factory AccountDetailsState.initial() => AccountDetailsState(
        firstName: TextEditingController(),
        lastName: TextEditingController(),
        displayName: TextEditingController(),
        mobilePhone: TextEditingController(),
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
