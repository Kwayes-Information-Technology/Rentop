part of 'billing_address_bloc.dart';

@freezed
class BillingAddressEvent with _$BillingAddressEvent {
  const factory BillingAddressEvent.initialBillingAddress(Billing billingInfo) =
      InitialBillingAddress;
  const factory BillingAddressEvent.clear() = Clear;
  const factory BillingAddressEvent.btnPressed() = BtnPressed;
  const factory BillingAddressEvent.countryChanged(String country) =
      CountryChanged;
}
