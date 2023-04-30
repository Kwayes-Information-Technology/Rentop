part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.fetchUserProfileData() = FetchUserProfileData;
  const factory AuthEvent.signedOut() = SignedOut;
}
