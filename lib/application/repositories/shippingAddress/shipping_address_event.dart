part of 'shipping_address_bloc.dart';

@freezed
class ShippingAddressEvent with _$ShippingAddressEvent {
  const factory ShippingAddressEvent.initialShippingAddress(
    Shipping shippingInfo,
  ) = InitialShippingAddress;
  const factory ShippingAddressEvent.clear() = Clear;
  const factory ShippingAddressEvent.btnPressed() = BtnPressed;
  const factory ShippingAddressEvent.countryChanged(String country) =
      CountryChanged;
}
