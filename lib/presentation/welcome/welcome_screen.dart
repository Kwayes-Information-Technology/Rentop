import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_logo.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RentopButtons.rentopCardButton(
                    text: "Customer",
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(context, '/SignUp'),
                    imagePath: Assets.customerVector,
                  ),
                  RentopButtons.rentopCardButton(
                    text: "Business",
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(context, '/SignUp'),
                    imagePath: Assets.businessVector,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            RentopButtons.rentopButton(
              text: "Sign in",
              context: context,
              onBtnPressed: () => Navigator.pushNamed(context, '/SignIn'),
              width: 224,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Or",
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: mainColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              "Login with Social Media",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFIconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                  type: GFButtonType.transparent,
                  shape: GFIconButtonShape.circle,
                  size: GFSize.LARGE,
                ),
                GFIconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.googleVector,
                    height: 45,
                    width: 45,
                  ),
                  type: GFButtonType.transparent,
                  shape: GFIconButtonShape.circle,
                  size: GFSize.LARGE,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
