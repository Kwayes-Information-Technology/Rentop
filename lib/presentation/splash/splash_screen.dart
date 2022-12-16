import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.fullLogo,
              width: MediaQuery.of(context).size.width / 1.5,
            ),
            const SizedBox(
              height: 31,
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
              onBtnPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
