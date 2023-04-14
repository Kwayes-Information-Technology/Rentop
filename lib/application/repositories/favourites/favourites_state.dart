part of 'favourites_bloc.dart';

@freezed
abstract class FavouritesState with _$FavouritesState {
  const factory FavouritesState({
    required List<Car> favourites,
  }) = _FavouritesState;

  factory FavouritesState.initial() => const FavouritesState(favourites: []);
}
