import 'package:flutter/material.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_logo.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            rentopLogo(context: context),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Welcome!",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              "With Rentop no more blind car rentals.",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 93,
            ),
            RentopButtons.rentopButton(
              text: "Start exploring",
              context: context,
              onBtnPressed: () => Navigator.pushNamed(context, '/Welcome'),
              width: 224,
            )
          ],
        ),
      ),
    );
  }
}
