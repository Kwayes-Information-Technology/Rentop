import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentop/domain/repositories/i_cars_repository.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_category.dart';
import 'package:rentop/infrastructure/models/car_region.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
      fetchCarsData: (e) async* {
        if (state.currentPage <= state.totalPages) {
          final cars = await _carsRepository.getCars(
            pageNumber: state.currentPage,
            carBrand: state.selectedCarBrand,
            carCategory: state.selectedCarCategory,
            carRegion: state.selectedCarRegion,
            listPerPage: state.listPerPage,
          );
          yield cars.fold(
            () {
              state.refreshControlloer.loadFailed();
              return state.copyWith(
                cars: [],
                loading: false,
              );
            },
            (data) {
              final List<Car> cars = [];
              cars.addAll(state.cars);
              cars.addAll(data.cars);
              state.refreshControlloer.loadComplete();
              return state.copyWith(
                cars: cars,
                totalPages: data.meta.totalPages,
                currentPage: data.meta.currentPage + 1,
                loading: false,
              );
            },
          );
        } else {
          state.refreshControlloer.loadNoData();
        }
      },
      refreshData: (e) async* {
        yield state.copyWith(
          cars: [],
          currentPage: 1,
          totalPages: 0,
        );
        final cars = await _carsRepository.getCars(
          pageNumber: state.currentPage,
          carBrand: state.selectedCarBrand,
          carCategory: state.selectedCarCategory,
          carRegion: state.selectedCarRegion,
          listPerPage: state.listPerPage,
        );
        yield cars.fold(
          () {
            state.refreshControlloer.refreshFailed();
            return state.copyWith(
              cars: [],
              loading: false,
            );
          },
          (data) {
            state.refreshControlloer.refreshCompleted();
            return state.copyWith(
              cars: data.cars,
              totalPages: data.meta.totalPages,
              currentPage: data.meta.currentPage + 1,
              loading: false,
            );
          },
        );
      },
      carBrandSelectedChanged: (e) async* {
        yield state.copyWith(
          selectedCarBrand: e.selectedCarBrand,
        );
      },
      carCategorySelectedChanged: (e) async* {
        yield state.copyWith(
          selectedCarCategory: e.selectedCarCategory,
        );
      },
      carRegionSelectedChanged: (e) async* {
        yield state.copyWith(
          selectedCarRegion: e.selectedCarRegion,
        );
      },
      clearFilterationButton: (e) async* {
        yield state.copyWith(
          selectedCarBrand: null,
          selectedCarCategory: null,
          selectedCarRegion: null,
          toPrice: null,
          fromPrice: null,
          dateRange: null,
        );
        state.dateRangeController.selectedRange = null;
      },
      filterationButton: (e) async* {
        add(const RefreshData());
      },
      removeCarBrandFilter: (e) async* {
        yield state.copyWith(
          selectedCarBrand: null,
        );
        add(const RefreshData());
      },
      removeCarCategoryFilter: (e) async* {
        yield state.copyWith(
          selectedCarCategory: null,
        );
        add(const RefreshData());
      },
      removeCarRegionFilter: (e) async* {
        yield state.copyWith(
          selectedCarRegion: null,
        );
        add(const RefreshData());
      },
      fetchTopCarsData: (e) async* {
        final cars = await _carsRepository.getTopCars();
        yield cars.fold(
          () {
            return state.copyWith(topCars: []);
          },
          (data) {
            return state.copyWith(topCars: data);
          },
        );
      },
      fromPriceChanged: (e) async* {
        yield state.copyWith(
          fromPrice: e.price,
        );
      },
      toPriceChanged: (e) async* {
        yield state.copyWith(
          toPrice: e.price,
        );
      },
      dateRangeChanged: (e) async* {
        yield state.copyWith(
          dateRange: e.range,
        );
      },
      listPerPageChanged: (e) async* {
        yield state.copyWith(
          listPerPage: e.listPerPage,
        );
      },
      initial: (e) async* {
        final listPerPage =
            // ignore: deprecated_member_use
            WidgetsBinding.instance.window.physicalSize.width >= 600 ? 9 : 3;
        yield state.copyWith(listPerPage: listPerPage);
        add(const FetchTopCarsData());
      },
    );
  }
}
