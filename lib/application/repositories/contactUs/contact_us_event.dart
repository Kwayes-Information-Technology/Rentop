part of 'contact_us_bloc.dart';

@freezed
class ContactUsEvent with _$ContactUsEvent {
  const factory ContactUsEvent.firstNameChanged(String firstName) =
      FirstNameChanged;
  const factory ContactUsEvent.lastNameChanged(String lastName) =
      LastNameChanged;
  const factory ContactUsEvent.emailAddressChanged(String email) =
      EmailAddressChanged;
  const factory ContactUsEvent.phoneNumberChanged(String phone) =
      PhoneNumberChanged;
  const factory ContactUsEvent.messageChanged(String message) = MessageChanged;
  const factory ContactUsEvent.btnPressed() = BtnPressed;
  const factory ContactUsEvent.clear() = Clear;
}
