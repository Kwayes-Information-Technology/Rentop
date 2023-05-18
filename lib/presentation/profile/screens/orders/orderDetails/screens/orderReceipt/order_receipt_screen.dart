import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rentop/infrastructure/models/entry.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class OrderReceiptScreen extends StatelessWidget {
  const OrderReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedEntry = ModalRoute.of(context)!.settings.arguments! as Entry;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RentopCards.rentopAppBar(
                  title: "Order Receipt",
                  context: context,
                  backBtn: true,
                  btn: null,
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Order ',
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: "#${selectedEntry.order!.id} ",
                              style: TextStyle(
                                color: mainColor,
                              ),
                            ),
                            const TextSpan(
                              text: "was placed on ",
                            ),
                            TextSpan(
                              text: DateFormat("dd MMMM yyyy").format(
                                selectedEntry.order!.createdDate,
                              ),
                              style: TextStyle(
                                color: mainColor,
                              ),
                            ),
                            const TextSpan(text: " and is currently "),
                            TextSpan(
                              text: toBeginningOfSentenceCase(
                                  selectedEntry.order!.status),
                              style: TextStyle(
                                color: mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  topRight: Radius.circular(13),
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    mainColor,
                                    mainShadeColor,
                                  ],
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Product",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                  ),
                                  Text(
                                    "Total",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Booking X1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        selectedEntry.car.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                              fontSize: 13,
                                              color: mainColor,
                                            ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Checkin : ${DateFormat("dd MMMM yyyy").format(selectedEntry.checkin)}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                              fontSize: 13,
                                            ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Checkout : ${DateFormat("dd MMMM yyyy").format(selectedEntry.checkout)}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                              fontSize: 13,
                                            ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "AED ${selectedEntry.pricing.dueNow}",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Subtotal:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  ),
                                  Text(
                                    "AED ${selectedEntry.pricing.dueNow}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "VAT:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  ),
                                  Text(
                                    "AED ${selectedEntry.order!.totalTax}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Payment Method:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  ),
                                  Text(
                                    toBeginningOfSentenceCase(selectedEntry
                                            .order!.paymentMethodTitle) ??
                                        selectedEntry.order!.paymentMethodTitle,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Divider(
                                thickness: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  ),
                                  Text(
                                    "AED ${selectedEntry.order!.total}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Billing Address",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: const Color.fromRGBO(0, 0, 0, 0.07),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Address:",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13),
                                ),
                                Column(
                                  children: [
                                    if (selectedEntry.order!.billing.firstName!
                                            .isNotEmpty &&
                                        selectedEntry.order!.billing.lastName!
                                            .isNotEmpty) ...[
                                      Text(
                                        "${selectedEntry.order!.billing.firstName} ${selectedEntry.order!.billing.lastName}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ],
                                    if (selectedEntry.order!.billing.company!
                                        .isNotEmpty) ...[
                                      Text(
                                        selectedEntry.order!.billing.company!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ],
                                    if (selectedEntry.order!.billing.address1!
                                        .isNotEmpty) ...[
                                      Text(
                                        selectedEntry.order!.billing.address1!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ],
                                    if (selectedEntry.order!.billing.address2!
                                        .isNotEmpty) ...[
                                      Text(
                                        selectedEntry.order!.billing.address2!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ],
                                    if (selectedEntry
                                        .order!.billing.city!.isNotEmpty) ...[
                                      Text(
                                        selectedEntry.order!.billing.city!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ],
                                    if (selectedEntry
                                        .order!.billing.state!.isNotEmpty) ...[
                                      Text(
                                        selectedEntry.order!.billing.state!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ],
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Phone:",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13),
                                ),
                                Text(
                                  selectedEntry.order!.billing.phone!,
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Email:",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13),
                                ),
                                Text(
                                  selectedEntry.order!.billing.email!,
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
