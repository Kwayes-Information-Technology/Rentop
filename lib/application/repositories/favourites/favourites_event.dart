part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.fetchFavouriteCarsData() =
      FetchFavouriteCarsData;
  const factory FavouritesEvent.refreshData() = RefreshData;
  const factory FavouritesEvent.favouritesIdChanged(String ids) =
      FavouriteIdChanged;
}
