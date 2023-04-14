part of 'entry_checkout_bloc.dart';

@freezed
abstract class EntryCheckoutState with _$EntryCheckoutState {
  const factory EntryCheckoutState({
    required Entry? selectedEntry,
    required Billing? billingInfo,
    required bool isSubmitting,
    required Option<Either<OrderFailure, Unit>> orderFailureOrSuccessOption,
  }) = _EntryCheckoutState;

  factory EntryCheckoutState.initial() => EntryCheckoutState(
        selectedEntry: null,
        billingInfo: null,
        isSubmitting: false,
        orderFailureOrSuccessOption: none(),
      );
}
