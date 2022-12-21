import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Assets.carEclipse),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Login",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 24,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    RentopTextFields.rentopTextField(
                      context: context,
                      onChanged: (val) {},
                      hintText: "Username or email",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    RentopTextFields.rentopTextField(
                      context: context,
                      onChanged: (val) {},
                      hintText: "Password",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    RentopButtons.rentopTextButtonWithIcon(
                      onBtnPressed: () => context.goNamed("ForgetPassword"),
                      btnText: "Lost you password?",
                      imagePath: Assets.lockVector,
                      context: context,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    RentopButtons.rentopButton(
                      text: "Sign in",
                      context: context,
                      onBtnPressed: () {},
                      width: double.infinity,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
