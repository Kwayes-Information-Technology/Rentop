part of 'checkout_bloc.dart';

@freezed
abstract class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    required Car? selectedCar,
    required PickerDateRange? dateRange,
    required DateRangePickerController dateRangeController,
    required List<Addons> addons,
    required double? totalAddons,
    required double? basePrice,
    required int? reservationNights,
    required double? longTermDiscount,
    required double? totalPrice,
    required double? dueNow,
    required Billing? billingInfo,
    required String? orderNotes,
    required bool isSubmitting,
    required Option<Either<OrderFailure, Unit>> orderFailureOrSuccessOption,
  }) = _CheckoutState;

  factory CheckoutState.initial() => CheckoutState(
        selectedCar: null,
        dateRange: null,
        dateRangeController: DateRangePickerController(),
        addons: [],
        basePrice: null,
        reservationNights: null,
        longTermDiscount: null,
        totalPrice: null,
        dueNow: null,
        totalAddons: null,
        billingInfo: null,
        orderNotes: null,
        isSubmitting: false,
        orderFailureOrSuccessOption: none(),
      );
}
