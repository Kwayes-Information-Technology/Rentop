import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/order_failure.dart';
import 'package:rentop/domain/repositories/i_orders_repository.dart';
import 'package:rentop/infrastructure/models/addons.dart';
import 'package:rentop/infrastructure/models/billing.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

@injectable
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final IOrdersRepository _ordersRepository;
  CheckoutBloc(this._ordersRepository) : super(CheckoutState.initial());

  @override
  Stream<CheckoutState> mapEventToState(
    CheckoutEvent event,
  ) async* {
    yield* event.map(
      selectedCarChanged: (e) async* {
        yield state.copyWith(
          selectedCar: e.car,
        );
      },
      dateRangeChanged: (e) async* {
        final nights = e.range!.endDate!.difference(e.range!.startDate!).inDays;
        final basePrice = state.selectedCar!.price * nights;
        double longTermDiscount = 0;
        double addons = 0;
        if (state.selectedCar!.longTermWeekDiscount != null ||
            state.selectedCar!.longTermMonthDiscount != null) {
          if (nights > 29) {
            longTermDiscount =
                basePrice * (state.selectedCar!.longTermMonthDiscount! / 100);
          } else if (nights > 6) {
            longTermDiscount =
                basePrice * (state.selectedCar!.longTermWeekDiscount! / 100);
          }
        }
        for (final element in state.addons) {
          if (element.fields.price != null) {
            addons += element.fields.price!;
          }
        }
        final totalPrice = (basePrice + addons) - longTermDiscount;
        yield state.copyWith(
          dateRange: e.range,
          reservationNights: nights,
          basePrice: basePrice,
          longTermDiscount: longTermDiscount,
          totalPrice: totalPrice,
          dueNow: totalPrice * 0.15,
          totalAddons: addons,
        );
      },
      clearDateRange: (e) async* {
        yield state.copyWith(
          dateRange: null,
          basePrice: null,
          reservationNights: null,
          longTermDiscount: null,
          totalPrice: null,
          dueNow: null,
          addons: [],
          totalAddons: null,
          isSubmitting: false,
          orderFailureOrSuccessOption: none(),
        );
        state.dateRangeController.selectedRange = null;
      },
      clear: (e) async* {
        yield state.copyWith(
          selectedCar: null,
          dateRange: null,
          basePrice: null,
          reservationNights: null,
          longTermDiscount: null,
          totalPrice: null,
          dueNow: null,
          addons: [],
          totalAddons: null,
          billingInfo: null,
          orderNotes: null,
          isSubmitting: false,
          orderFailureOrSuccessOption: none(),
        );
        state.dateRangeController.selectedRange = null;
      },
      updateAddons: (e) async* {
        final List<Addons> addons = [];
        addons.addAll(state.addons);
        if (addons.contains(e.addon)) {
          addons.remove(e.addon);
        } else {
          addons.add(e.addon);
        }
        if (state.dateRange != null) {
          add(DateRangeChanged(state.dateRange));
        }
        yield state.copyWith(addons: addons);
      },
      btnPressed: (e) async* {
        Either<OrderFailure, Unit>? failureOrSuccess;
        if (state.selectedCar != null && state.dateRange != null) {
          yield state.copyWith(
            isSubmitting: true,
            orderFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _ordersRepository.placeOrder(
            car: state.selectedCar!,
            dateRange: state.dateRange!,
            addons: state.addons,
            totalAddons: state.totalAddons!,
            basePrice: state.basePrice!,
            nights: state.reservationNights!,
            longTermDiscount: state.longTermDiscount!,
            totalPrice: state.totalPrice!,
            dueNow: state.dueNow!,
            billingInfo: state.billingInfo,
            orderNotes: state.orderNotes,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          orderFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      billingInfoChanged: (e) async* {
        yield state.copyWith(billingInfo: e.billing);
      },
      orderNotesChanged: (e) async* {
        yield state.copyWith(orderNotes: e.orderNotes);
      },
    );
  }
}
