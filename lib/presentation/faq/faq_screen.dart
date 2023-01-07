import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: Column(
            children: [
              RentopCards.rentopAppBar(title: 'FAQs', context: context),
              const SizedBox(
                height: 20,
              ),
              ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 29),
                childrenPadding: const EdgeInsets.symmetric(horizontal: 29),
                title: Text(
                  'What is Rentop?',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 18, color: mainColor),
                ),
                iconColor: mainColor,
                children: [
                  ListTile(
                    title: Text(
                      'data',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
