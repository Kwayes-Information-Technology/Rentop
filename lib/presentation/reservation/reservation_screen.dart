import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/repositories/checkout/checkout_bloc.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCar = ModalRoute.of(context)!.settings.arguments! as Car;
    return Scaffold(
      body: BlocConsumer<CheckoutBloc, CheckoutState>(
        listener: (context, state) {
          state.orderFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) {
                Flushbar(
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  backgroundGradient: LinearGradient(
                    colors: [
                      mainColor,
                      mainShadeColor,
                    ],
                  ),
                  boxShadows: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  message: failure.map(
                    serverError: (_) => 'Server Error',
                    pendingRequests: (_) =>
                        'You Already Have Pending Requests.',
                    paymentIntentError: (_) => 'Payment Error',
                  ),
                ).show(context);
              },
              (_) {
                Navigator.pushNamed(
                  context,
                  '/CarReservationDone',
                  arguments: selectedCar.instant
                      ? "Your order has been received."
                      : "Your request has been sent successfully",
                );
              },
            ),
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        RentopCards.rentopAppBar(
                            title: selectedCar.name,
                            context: context,
                            backBtn: true,
                            btn: null,
                            backCallback: () => context
                                .read<CheckoutBloc>()
                                .add(const CheckoutEvent.clear())),
                        const SizedBox(
                          height: 17,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          padding: const EdgeInsets.all(23),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black.withOpacity(0.20),
                            ),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "AED${selectedCar.price == selectedCar.price.roundToDouble() ? selectedCar.price.toStringAsFixed(0) : selectedCar.price.toStringAsFixed(2)}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Day",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Visibility(
                                visible: selectedCar.addons.isNotEmpty,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 22),
                                  child:
                                      RentopButtons.rentopAddonsDropDownButton(
                                    addons: selectedCar.addons,
                                    selectedAddons: state.addons,
                                    addonChanged: (addon) => context
                                        .read<CheckoutBloc>()
                                        .add(CheckoutEvent.updateAddons(addon)),
                                    context: context,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              SfDateRangePicker(
                                  controller: context
                                      .read<CheckoutBloc>()
                                      .state
                                      .dateRangeController,
                                  initialDisplayDate: DateTime.now(),
                                  selectionMode:
                                      DateRangePickerSelectionMode.range,
                                  minDate: DateTime.now(),
                                  selectionColor: mainColor,
                                  monthCellStyle: DateRangePickerMonthCellStyle(
                                    todayTextStyle: TextStyle(
                                      color: mainColor,
                                    ),
                                  ),
                                  monthViewSettings:
                                      DateRangePickerMonthViewSettings(
                                    blackoutDates: selectedCar.bookedTimes +
                                        selectedCar.pendingTimes +
                                        selectedCar.unavailableTimes,
                                  ),
                                  rangeSelectionColor:
                                      mainColor.withOpacity(0.5),
                                  todayHighlightColor: mainColor,
                                  startRangeSelectionColor: mainColor,
                                  endRangeSelectionColor: mainColor,
                                  headerStyle: DateRangePickerHeaderStyle(
                                    textAlign: TextAlign.center,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontSize: 14,
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.7),
                                        ),
                                  ),
                                  onSelectionChanged: (args) {
                                    if (args.value != null &&
                                        args.value.endDate != null) {
                                      context.read<CheckoutBloc>().add(
                                          CheckoutEvent.dateRangeChanged(
                                              args.value));
                                    }
                                  }),
                              if (state.dateRange != null) ...[
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () => context.read<CheckoutBloc>().add(
                                        const CheckoutEvent.clearDateRange(),
                                      ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    child: Text(
                                      "Clear dates",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: Colors.black,
                                            fontSize: 13,
                                          ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Res. length',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(fontSize: 14),
                                    ),
                                    Text(
                                      'X ${state.reservationNights}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Price',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(fontSize: 14),
                                    ),
                                    Text(
                                      'AED ${state.basePrice == state.basePrice!.roundToDouble() ? state.basePrice!.toStringAsFixed(0) : state.basePrice!.toStringAsFixed(2)}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Visibility(
                                  visible: state.longTermDiscount != null &&
                                      state.longTermDiscount != 0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Long term discount',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(fontSize: 14),
                                        ),
                                        Text(
                                          '- AED ${state.longTermDiscount == state.longTermDiscount!.roundToDouble() ? state.longTermDiscount!.toStringAsFixed(0) : state.longTermDiscount!.toStringAsFixed(2)}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: state.totalAddons != null &&
                                      state.totalAddons != 0,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: state.addons.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state.addons[index].fields.name,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(fontSize: 14),
                                            ),
                                            if (state.addons[index].fields
                                                    .price !=
                                                null) ...[
                                              Text(
                                                "AED ${state.addons[index].fields.price == state.addons[index].fields.price!.roundToDouble() ? state.addons[index].fields.price!.toStringAsFixed(0) : state.addons[index].fields.price!.toStringAsFixed(2)}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge!
                                                    .copyWith(fontSize: 14),
                                              ),
                                            ]
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Process percentage payment',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(fontSize: 14),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 14),
                                    ),
                                    Text(
                                      'AED ${state.totalPrice == state.totalPrice!.roundToDouble() ? state.totalPrice!.toStringAsFixed(0) : state.totalPrice!.toStringAsFixed(2)}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Due now',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 14),
                                    ),
                                    Text(
                                      'AED ${state.dueNow == state.dueNow!.roundToDouble() ? state.dueNow!.toStringAsFixed(0) : state.dueNow!.toStringAsFixed(2)}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //     horizontal: 30,
                        //   ),
                        //   child: RentopTextFields.rentopTextFieldV2(
                        //       context: context,
                        //       onChanged: (val) => context
                        //           .read<CheckoutBloc>()
                        //           .add(CheckoutEvent.orderNotesChanged(val)),
                        //       obsecureText: false,
                        //       minLines: 3,
                        //       maxLines: 5,
                        //       hintText:
                        //           "Notes about your order e.g. special notes for delivery.",
                        //       labelText: "Order notes (optional)"),
                        // ),
                        // Container(
                        //   margin: const EdgeInsets.symmetric(
                        //     horizontal: 30,
                        //   ),
                        //   padding: const EdgeInsets.all(23),
                        //   decoration: BoxDecoration(
                        //     border: Border.all(
                        //       width: 0.5,
                        //       color: Colors.black.withOpacity(0.20),
                        //     ),
                        //     borderRadius: BorderRadius.circular(13),
                        //   ),
                        //   child: RentopTextFields.rentopTextField(
                        //     context: context,
                        //     onChanged: (val) {},
                        //     hintText:
                        //         "Notes about your order e.g. special notes for delivery.",
                        //     suffixIcon: null,
                        //     obsecureText: false,
                        //     controller: null,
                        //   ),
                        // ),
                        const SizedBox(
                          height: 17,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: RentopButtons.rentopButton(
                    text: selectedCar.instant
                        ? "Instant Book"
                        : "Send reservation request",
                    context: context,
                    onBtnPressed: () => context
                        .read<CheckoutBloc>()
                        .add(const CheckoutEvent.btnPressed()),
                    width: 200,
                    isLoading: state.isSubmitting,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
