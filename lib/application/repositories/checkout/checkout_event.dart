part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.selectedCarChanged(Car car) = SelectedCarChanged;
  const factory CheckoutEvent.dateRangeChanged(PickerDateRange? range) =
      DateRangeChanged;
  const factory CheckoutEvent.clearDateRange() = ClearDateRange;
  const factory CheckoutEvent.clear() = Clear;
  const factory CheckoutEvent.btnPressed() = BtnPressed;
  const factory CheckoutEvent.updateAddons(Addons addon) = UpdateAddons;
  const factory CheckoutEvent.billingInfoChanged(Billing? billing) =
      BillingInfoChanged;
  const factory CheckoutEvent.orderNotesChanged(String? orderNotes) =
      OrderNotesChanged;
}
