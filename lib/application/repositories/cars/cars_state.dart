part of 'cars_bloc.dart';

@freezed
abstract class CarsState with _$CarsState {
  const factory CarsState({
    required List<Car> cars,
    required List<Car> topCars,
    required int totalPages,
    required int currentPage,
    required RefreshController refreshControlloer,
    required bool loading,
    required CarCategory? selectedCarCategory,
    required CarRegion? selectedCarRegion,
    required CarBrand? selectedCarBrand,
    required String? fromPrice,
    required String? toPrice,
    required PickerDateRange? dateRange,
    required DateRangePickerController dateRangeController,
  }) = _CarsState;

  factory CarsState.initial() => CarsState(
        cars: [],
        topCars: [],
        currentPage: 0,
        totalPages: 0,
        refreshControlloer: RefreshController(initialRefresh: true),
        loading: false,
        selectedCarBrand: null,
        selectedCarCategory: null,
        selectedCarRegion: null,
        fromPrice: null,
        toPrice: null,
        dateRange: null,
        dateRangeController: DateRangePickerController(),
      );
}
