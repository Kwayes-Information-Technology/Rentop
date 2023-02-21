part of 'car_fees_bloc.dart';

@freezed
class CarFeesEvent with _$CarFeesEvent {
  const factory CarFeesEvent.fetchCarFessData() = FetchCarFeesData;
}
