import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/order_failure.dart';
import 'package:rentop/domain/repositories/i_orders_repository.dart';
import 'package:rentop/infrastructure/models/billing.dart';
import 'package:rentop/infrastructure/models/entry.dart';

part 'entry_checkout_event.dart';
part 'entry_checkout_state.dart';
part 'entry_checkout_bloc.freezed.dart';

@injectable
class EntryCheckoutBloc extends Bloc<EntryCheckoutEvent, EntryCheckoutState> {
  final IOrdersRepository _ordersRepository;
  EntryCheckoutBloc(this._ordersRepository)
      : super(EntryCheckoutState.initial());

  @override
  Stream<EntryCheckoutState> mapEventToState(
    EntryCheckoutEvent event,
  ) async* {
    yield* event.map(
      selectedEntryChanged: (e) async* {
        yield state.copyWith(selectedEntry: e.entry);
      },
      clear: (e) async* {
        yield state.copyWith(
          selectedEntry: null,
          isSubmitting: false,
          orderFailureOrSuccessOption: none(),
        );
      },
      btnPressed: (e) async* {
        Either<OrderFailure, Unit>? failureOrSuccess;
        if (state.selectedEntry != null) {
          yield state.copyWith(
            isSubmitting: true,
            orderFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _ordersRepository.entryPayNow(
            entry: state.selectedEntry!,
            billingInfo: state.billingInfo,
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
    );
  }
}
