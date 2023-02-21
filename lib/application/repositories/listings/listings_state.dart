part of 'listings_bloc.dart';

@freezed
abstract class ListingsState with _$ListingsState {
  const factory ListingsState({
    required List<CarBrand> carBrands,
    required List<CarCategory> carCategories,
    required List<CarFeature> carFeatures,
    required List<CarSpecification> carSpecifications,
    required List<CarRegion> carRegions,
  }) = _ListingsState;

  factory ListingsState.initial() => const ListingsState(
        carBrands: [],
        carCategories: [],
        carFeatures: [],
        carSpecifications: [],
        carRegions: [],
      );
}
