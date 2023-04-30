import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/repositories/entryCheckout/entry_checkout_bloc.dart';
import 'package:rentop/infrastructure/models/entry.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class OrderCheckoutScreen extends StatelessWidget {
  const OrderCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedEntry = ModalRoute.of(context)!.settings.arguments! as Entry;
    return Scaffold(
      body: BlocConsumer<EntryCheckoutBloc, EntryCheckoutState>(
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
                  arguments: "Your order has been received.",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RentopCards.rentopAppBar(
                          title: selectedEntry.car.name,
                          context: context,
                          backBtn: true,
                          btn: null,
                          backCallback: () => context
                              .read<EntryCheckoutBloc>()
                              .add(const EntryCheckoutEvent.clear()),
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Reservation",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 18),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Reservation ID",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    "#${selectedEntry.id}",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Reservation Status",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    selectedEntry.status == 'declined'
                                        ? "Declined"
                                        : selectedEntry.status == 'pending'
                                            ? "Pending"
                                            : selectedEntry.status ==
                                                    'pending_payment'
                                                ? "Pending Payment"
                                                : selectedEntry.status,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Checkin Date",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    DateFormat("dd MMMM yyyy")
                                        .format(selectedEntry.checkin),
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Checkout Date",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    DateFormat("dd MMMM yyyy")
                                        .format(selectedEntry.checkout),
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Nights",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    "x${selectedEntry.pricing.nights}",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                "Pricing Details",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 18),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Base Price",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    'AED ${selectedEntry.pricing.base == selectedEntry.pricing.base.roundToDouble() ? selectedEntry.pricing.base.toStringAsFixed(0) : selectedEntry.pricing.base.toStringAsFixed(2)}',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              if (selectedEntry.pricing.longTerm > 0.0) ...[
                                const SizedBox(
                                  height: 13,
                                ),
                                const Divider(
                                  thickness: 0.5,
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Long term discount",
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Text(
                                      'AED ${selectedEntry.pricing.longTerm == selectedEntry.pricing.longTerm.roundToDouble() ? selectedEntry.pricing.longTerm.toStringAsFixed(0) : selectedEntry.pricing.longTerm.toStringAsFixed(2)}',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              ],
                              if (selectedEntry.pricing.addons.isNotEmpty) ...[
                                const SizedBox(
                                  height: 13,
                                ),
                                const Divider(
                                  thickness: 0.5,
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount:
                                      selectedEntry.pricing.addons.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          selectedEntry
                                              .pricing.addons[index].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        Text(
                                          'AED ${selectedEntry.pricing.addons[index].price == selectedEntry.pricing.addons[index].price.roundToDouble() ? selectedEntry.pricing.addons[index].price.toStringAsFixed(0) : selectedEntry.pricing.addons[index].price.toStringAsFixed(2)}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    );
                                  },
                                )
                              ],
                              const SizedBox(
                                height: 13,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Text(
                                    'AED ${selectedEntry.pricing.total == selectedEntry.pricing.total.roundToDouble() ? selectedEntry.pricing.total.toStringAsFixed(0) : selectedEntry.pricing.total.toStringAsFixed(2)}',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Due Now",
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Text(
                                    'AED ${selectedEntry.pricing.dueNow == selectedEntry.pricing.dueNow.roundToDouble() ? selectedEntry.pricing.dueNow.toStringAsFixed(0) : selectedEntry.pricing.dueNow.toStringAsFixed(2)}',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                    text: "Pay Now",
                    context: context,
                    onBtnPressed: () {
                      final authState = context.read<AuthBloc>().state;
                      if (authState is Authenticated) {
                        context.read<EntryCheckoutBloc>().add(
                            EntryCheckoutEvent.billingInfoChanged(
                                authState.profile.billing));
                        context
                            .read<EntryCheckoutBloc>()
                            .add(const EntryCheckoutEvent.btnPressed());
                      } else {
                        Flushbar(
                          margin: const EdgeInsets.all(8),
                          borderRadius: BorderRadius.circular(8),
                          message:
                              "You're not registered user. You have to be registered user in order to use this feature!",
                        ).show(context);
                      }
                    },
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
