import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_listings_facade.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_category.dart';
import 'package:rentop/infrastructure/models/car_feature.dart';
import 'package:rentop/infrastructure/models/car_region.dart';
import 'package:rentop/infrastructure/models/car_specification.dart';

part 'listings_event.dart';
part 'listings_state.dart';
part 'listings_bloc.freezed.dart';

@injectable
class ListingsBloc extends Bloc<ListingsEvent, ListingsState> {
  final IListingsRepository _listingsRepository;

  ListingsBloc(this._listingsRepository) : super(ListingsState.initial());

  @override
  Stream<ListingsState> mapEventToState(
    ListingsEvent event,
  ) async* {
    final listings = await _listingsRepository.getListings();
    yield listings.fold(
      () => state.copyWith(
        carBrands: [],
        carCategories: [],
        carFeatures: [],
        carSpecifications: [],
        carRegions: [],
      ),
      (data) => state.copyWith(
        carBrands: data.carBrands,
        carCategories: data.carCategories,
        carFeatures: data.carFeatures,
        carSpecifications: data.carSpecifications,
        carRegions: data.carRegions,
      ),
    );
  }
}
