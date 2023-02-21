import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_car_fees_repository.dart';
import 'package:rentop/infrastructure/models/car_fees.dart';

part 'car_fees_event.dart';
part 'car_fees_state.dart';
part 'car_fees_bloc.freezed.dart';

@injectable
class CarFeesBloc extends Bloc<CarFeesEvent, CarFeesState> {
  final ICarFeesRepository _carFeesRepository;

  CarFeesBloc(this._carFeesRepository) : super(CarFeesState.initial());

  @override
  Stream<CarFeesState> mapEventToState(
    CarFeesEvent event,
  ) async* {
    yield* event.map(
      fetchCarFessData: (e) async* {
        final carFees = await _carFeesRepository.getCarFees();
        carFees.fold(
          () {
            return state.copyWith(carFees: null);
          },
          (data) {
            return state.copyWith(carFees: data);
          },
        );
      },
    );
  }
}
