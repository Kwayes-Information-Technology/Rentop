import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';

Widget rentopGuestUserWarning({
  required BuildContext context,
}) {
  return Column(
    children: [
      SizedBox(
        height: (MediaQuery.of(context).size.height - 120) / 2,
        width: MediaQuery.of(context).size.width - 60,
        child: Column(
          children: [
            ImageIcon(
              const AssetImage(
                Assets.warningIcon,
              ),
              color: mainColor,
              size: 50,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              "You're not registered user!",
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              "You have to be registered user in order to use this page!",
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      RentopButtons.rentopGradientButton(
        text: "Sign in",
        context: context,
        onBtnPressed: () => Navigator.pushNamed(context, '/SignIn'),
      ),
      const SizedBox(
        height: 24,
      ),
      RentopButtons.rentopOutlineButton(
        text: "Sign Up",
        context: context,
        onBtnPressed: () => Navigator.pushNamed(context, '/SignUp'),
        color: mainShadeColor,
      ),
    ],
  );
}
