import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentop/domain/repositories/i_favourites_repository.dart';
import 'package:rentop/infrastructure/models/car.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final IFavouritesRepository _favouritesRepository;

  FavouritesBloc(this._favouritesRepository) : super(FavouritesState.initial());

  @override
  Stream<FavouritesState> mapEventToState(
    FavouritesEvent event,
  ) async* {
    yield* event.map(
      fetchFavouriteCarsData: (e) async* {
        if (state.favouritesId != null && state.favouritesId!.isNotEmpty) {
          if (state.currentPage <= state.totalPages) {
            final cars = await _favouritesRepository.getFavourites(
              pageNumber: state.currentPage,
              favouritesId: state.favouritesId!,
            );
            yield cars.fold(
              () {
                state.refreshController.loadFailed();
                return state.copyWith(
                  cars: [],
                  loading: false,
                );
              },
              (data) {
                final List<Car> cars = [];
                cars.addAll(state.cars);
                cars.addAll(data.cars);
                state.refreshController.loadComplete();
                return state.copyWith(
                  cars: cars,
                  totalPages: data.meta.totalPages,
                  currentPage: data.meta.currentPage + 1,
                  loading: false,
                );
              },
            );
          }
        }
      },
      refreshData: (e) async* {
        if (state.favouritesId != null && state.favouritesId!.isNotEmpty) {
          yield state.copyWith(
            cars: [],
            currentPage: 1,
            totalPages: 0,
          );
          final cars = await _favouritesRepository.getFavourites(
            pageNumber: state.currentPage,
            favouritesId: state.favouritesId!,
          );
          yield cars.fold(
            () {
              state.refreshController.refreshFailed();
              return state.copyWith(
                cars: [],
                loading: false,
              );
            },
            (data) {
              state.refreshController.refreshCompleted();
              return state.copyWith(
                cars: data.cars,
                totalPages: data.meta.totalPages,
                currentPage: data.meta.currentPage + 1,
                loading: false,
              );
            },
          );
        }
      },
      favouritesIdChanged: (e) async* {
        yield state.copyWith(
          favouritesId: e.ids,
        );
        add(const FetchFavouriteCarsData());
      },
    );
  }
}
