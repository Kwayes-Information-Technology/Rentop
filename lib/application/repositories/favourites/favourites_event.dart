part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.fetchFavouritesData() = FetchFavouritesData;
  const factory FavouritesEvent.addFavourite(String carId) = AddFavourite;
  const factory FavouritesEvent.removeFavourite(String carId) = RemoveFavourite;
}
