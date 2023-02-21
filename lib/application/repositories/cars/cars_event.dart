part of 'cars_bloc.dart';

@freezed
class CarsEvent with _$CarsEvent {
  const factory CarsEvent.fetchCarsData() = FetchCarsData;
  const factory CarsEvent.refreshData() = RefreshData;
  const factory CarsEvent.carCategorySelectedChanged(
      CarCategory? selectedCarCategory) = CarCategorySelectedChanged;
  const factory CarsEvent.carBrandSelectedChanged(CarBrand? selectedCarBrand) =
      CarBrandSelectedChanged;
  const factory CarsEvent.carRegionSelectedChanged(
      CarRegion? selectedCarRegion) = CarRegionSelectedChanged;
  const factory CarsEvent.fromPriceChanged(String price) = FromPriceChanged;
  const factory CarsEvent.toPriceChanged(String price) = ToPriceChanged;
  const factory CarsEvent.dateRangeChanged(PickerDateRange? range) =
      DateRangeChanged;
  const factory CarsEvent.clearFilterationButton() = ClearFilterationButton;
  const factory CarsEvent.filterationButton() = FilterationButton;
  const factory CarsEvent.removeCarBrandFilter() = RemoveCarBrandFilter;
  const factory CarsEvent.removeCarCategoryFilter() = RemoveCarCategoryFilter;
  const factory CarsEvent.removeCarRegionFilter() = RemoveCarRegionFilter;
  const factory CarsEvent.fetchTopCarsData() = FetchTopCarsData;
}
