import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_cars_repository.dart';
import 'package:rentop/infrastructure/models/car.dart';

part 'cars_event.dart';
part 'cars_state.dart';
part 'cars_bloc.freezed.dart';

@injectable
class CarsBloc extends Bloc<CarsEvent, CarsState> {
  final ICarsRepository _carsRepository;

  CarsBloc(this._carsRepository) : super(CarsState.initial());

  @override
  Stream<CarsState> mapEventToState(
    CarsEvent event,
  ) async* {
    yield* event.map(
      watchCarsData: (e) async* {
        final cars = await _carsRepository.getCars();
        yield cars.fold(
          () => state.copyWith(cars: []),
          (data) => state.copyWith(cars: data),
        );
      },
    );
  }
}
