import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_profile_repository.dart';
import 'package:rentop/infrastructure/models/car.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final IProfileRepository _profileRepository;
  FavouritesBloc(this._profileRepository) : super(FavouritesState.initial());

  @override
  Stream<FavouritesState> mapEventToState(
    FavouritesEvent event,
  ) async* {
    yield* event.map(
      fetchFavouritesData: (e) async* {
        final favourites = await _profileRepository.getFavourites();
        yield favourites.fold(() {
          return state.copyWith(favourites: []);
        }, (data) {
          return state.copyWith(favourites: data);
        });
      },
      addFavourite: (e) async* {
        await _profileRepository.addFavourite(
          carId: e.carId,
        );
        add(const FetchFavouritesData());
      },
      removeFavourite: (e) async* {
        await _profileRepository.removeFavourite(
          carId: e.carId,
        );
        add(const FetchFavouritesData());
      },
    );
  }
}
