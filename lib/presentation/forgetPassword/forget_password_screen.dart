import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
            "Forgot password",
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
                  Text(
                    "Please enter you e-mail address. You will recieve a link to create a new password via email.",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  RentopTextFields.rentopTextField(
                    context: context,
                    onChanged: (val) {},
                    hintText: "Email",
                    obsecureText: false,
                    onVaildator: null,
                    suffixIcon: null,
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  RentopButtons.rentopButton(
                    text: "Reset password",
                    context: context,
                    onBtnPressed: () {},
                    width: double.infinity,
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
