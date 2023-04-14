part of 'entry_checkout_bloc.dart';

@freezed
class EntryCheckoutEvent with _$EntryCheckoutEvent {
  const factory EntryCheckoutEvent.selectedEntryChanged(Entry entry) =
      SelectedEntryChanged;
  const factory EntryCheckoutEvent.clear() = Clear;
  const factory EntryCheckoutEvent.btnPressed() = BtnPressed;
  const factory EntryCheckoutEvent.billingInfoChanged(Billing? billing) =
      BillingInfoChanged;
}
