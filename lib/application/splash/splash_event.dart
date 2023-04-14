part of 'splash_bloc.dart';

@freezed
abstract class SplashEvent with _$SplashEvent {
  const factory SplashEvent.userCheckRequested() = UserCheckRequested;
  const factory SplashEvent.assignUserAsReturnUser() = AssignUserAsReturnUser;
}
