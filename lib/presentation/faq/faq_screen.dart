import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/models/faq.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 23),
            child: Column(
              children: [
                RentopCards.rentopAppBar(
                  title: 'FAQs',
                  context: context,
                  backBtn: true,
                  btn: null,
                ),
                const SizedBox(
                  height: 23,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: customerFAQs.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      tilePadding: const EdgeInsets.symmetric(horizontal: 29),
                      childrenPadding:
                          const EdgeInsets.symmetric(horizontal: 14.5),
                      title: Text(
                        customerFAQs[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 18, color: mainColor),
                      ),
                      iconColor: mainColor,
                      children: [
                        ListTile(
                          title: Text(
                            customerFAQs[index].description,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
