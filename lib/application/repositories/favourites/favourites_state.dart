part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState({
    required List<Car> cars,
    required String? favouritesId,
    required int totalPages,
    required int currentPage,
    required RefreshController refreshController,
    required bool loading,
  }) = _FavouritesState;

  factory FavouritesState.initial() => FavouritesState(
        cars: [],
        currentPage: 1,
        totalPages: 0,
        loading: false,
        refreshController: RefreshController(),
        favouritesId: null,
      );
}
