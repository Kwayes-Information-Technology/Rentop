part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountEvent with _$DeleteAccountEvent {
  const factory DeleteAccountEvent.reasonChanged(String reason) = ReasonChanged;
  const factory DeleteAccountEvent.btnPressed() = BtnPressed;
  const factory DeleteAccountEvent.clear() = Clear;
}
