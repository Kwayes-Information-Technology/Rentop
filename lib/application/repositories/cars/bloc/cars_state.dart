part of 'cars_bloc.dart';

@freezed
abstract class CarsState with _$CarsState {
  const factory CarsState({
    required List<Car> cars,
  }) = _CarsState;

  factory CarsState.initial() => const CarsState(
        cars: [],
      );
}
