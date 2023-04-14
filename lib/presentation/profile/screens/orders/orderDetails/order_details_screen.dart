import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rentop/infrastructure/models/entry.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedEntry = ModalRoute.of(context)!.settings.arguments! as Entry;
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 23),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RentopCards.rentopAppBar(
                      title: "Order Details",
                      context: context,
                      backBtn: true,
                      btn: null,
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                              context,
                              '/CarDetails',
                              arguments: selectedEntry.car,
                            ),
                            child: Row(
                              children: [
                                if (selectedEntry.car.images.isNotEmpty) ...[
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      selectedEntry.car.images.first,
                                    ),
                                    radius: 27,
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                ],
                                Text(
                                  selectedEntry.car.name,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reservation ID",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                "#${selectedEntry.id}",
                                style: Theme.of(context).textTheme.bodyText1,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reservation Status",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                selectedEntry.status == 'declined'
                                    ? "Declined"
                                    : selectedEntry.status == 'pending'
                                        ? "Pending"
                                        : selectedEntry.status ==
                                                'pending_payment'
                                            ? "Pending Payment"
                                            : selectedEntry.status == 'publish'
                                                ? 'Active'
                                                : selectedEntry.status,
                                style: Theme.of(context).textTheme.bodyText1,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Checkin Date",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                DateFormat("dd MMMM yyyy")
                                    .format(selectedEntry.checkin),
                                style: Theme.of(context).textTheme.bodyText1,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Checkout Date",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                DateFormat("dd MMMM yyyy")
                                    .format(selectedEntry.checkout),
                                style: Theme.of(context).textTheme.bodyText1,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nights",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                "x${selectedEntry.pricing.nights}",
                                style: Theme.of(context).textTheme.bodyText1,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Base Price",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                'AED ${selectedEntry.pricing.base == selectedEntry.pricing.base.roundToDouble() ? selectedEntry.pricing.base.toStringAsFixed(0) : selectedEntry.pricing.base.toStringAsFixed(2)}',
                                style: Theme.of(context).textTheme.bodyText1,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Long term discount",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  'AED ${selectedEntry.pricing.longTerm == selectedEntry.pricing.longTerm.roundToDouble() ? selectedEntry.pricing.longTerm.toStringAsFixed(0) : selectedEntry.pricing.longTerm.toStringAsFixed(2)}',
                                  style: Theme.of(context).textTheme.bodyText1,
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
                              itemCount: selectedEntry.pricing.addons.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      selectedEntry.pricing.addons[index].name,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Text(
                                      'AED ${selectedEntry.pricing.addons[index].price == selectedEntry.pricing.addons[index].price.roundToDouble() ? selectedEntry.pricing.addons[index].price.toStringAsFixed(0) : selectedEntry.pricing.addons[index].price.toStringAsFixed(2)}',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'AED ${selectedEntry.pricing.total == selectedEntry.pricing.total.roundToDouble() ? selectedEntry.pricing.total.toStringAsFixed(0) : selectedEntry.pricing.total.toStringAsFixed(2)}',
                                style: Theme.of(context).textTheme.bodyText2,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Due Now",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'AED ${selectedEntry.pricing.dueNow == selectedEntry.pricing.dueNow.roundToDouble() ? selectedEntry.pricing.dueNow.toStringAsFixed(0) : selectedEntry.pricing.dueNow.toStringAsFixed(2)}',
                                style: Theme.of(context).textTheme.bodyText2,
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
          Visibility(
            visible: selectedEntry.status == 'publish',
            child: Align(
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
                  text: "View Receipt",
                  context: context,
                  onBtnPressed: () => Navigator.pushNamed(
                    context,
                    '/OrderReceipt',
                    arguments: selectedEntry,
                  ),
                  width: 200,
                  isLoading: false,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
