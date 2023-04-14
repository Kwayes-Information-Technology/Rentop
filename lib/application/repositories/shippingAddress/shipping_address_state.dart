part of 'shipping_address_bloc.dart';

@freezed
abstract class ShippingAddressState with _$ShippingAddressState {
  const factory ShippingAddressState({
    required TextEditingController firstName,
    required TextEditingController lastName,
    required TextEditingController companyName,
    required String country,
    required TextEditingController address1,
    required TextEditingController address2,
    required TextEditingController city,
    required TextEditingController state,
    required TextEditingController postcode,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _ShippingAddressState;

  factory ShippingAddressState.initial() => ShippingAddressState(
        firstName: TextEditingController(),
        lastName: TextEditingController(),
        companyName: TextEditingController(),
        country: '',
        address1: TextEditingController(),
        address2: TextEditingController(),
        city: TextEditingController(),
        state: TextEditingController(),
        postcode: TextEditingController(),
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
