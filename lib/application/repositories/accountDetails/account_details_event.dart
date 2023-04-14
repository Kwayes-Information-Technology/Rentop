part of 'account_details_bloc.dart';

@freezed
class AccountDetailsEvent with _$AccountDetailsEvent {
  const factory AccountDetailsEvent.initialAccountDetails(Profile profile) =
      InitialAccountDetails;
  const factory AccountDetailsEvent.clear() = Clear;
  const factory AccountDetailsEvent.btnPressed() = BtnPressed;
}
