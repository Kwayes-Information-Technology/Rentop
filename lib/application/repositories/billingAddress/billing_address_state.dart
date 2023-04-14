part of 'billing_address_bloc.dart';

@freezed
abstract class BillingAddressState with _$BillingAddressState {
  const factory BillingAddressState({
    required TextEditingController firstName,
    required TextEditingController lastName,
    required TextEditingController companyName,
    required String country,
    required TextEditingController address1,
    required TextEditingController address2,
    required TextEditingController city,
    required TextEditingController state,
    required TextEditingController postcode,
    required TextEditingController email,
    required TextEditingController phoneNumber,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _BillingAddressState;

  factory BillingAddressState.initial() => BillingAddressState(
        firstName: TextEditingController(),
        lastName: TextEditingController(),
        companyName: TextEditingController(),
        country: '',
        address1: TextEditingController(),
        address2: TextEditingController(),
        city: TextEditingController(),
        state: TextEditingController(),
        postcode: TextEditingController(),
        email: TextEditingController(),
        phoneNumber: TextEditingController(),
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
