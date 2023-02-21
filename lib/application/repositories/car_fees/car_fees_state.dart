part of 'car_fees_bloc.dart';

@freezed
abstract class CarFeesState with _$CarFeesState {
  const factory CarFeesState({
    required CarFees? carFees,
  }) = _CarFeesState;

  factory CarFeesState.initial() => const CarFeesState(
        carFees: null,
      );
}
