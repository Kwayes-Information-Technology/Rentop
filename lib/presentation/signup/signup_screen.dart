import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              "Create account",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 24,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    RentopTextFields.rentopTextField(
                      context: context,
                      onChanged: (val) {},
                      hintText: "Username",
                      obsecureText: false,
                      onVaildator: null,
                      suffixIcon: null,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RentopTextFields.rentopTextField(
                            context: context,
                            onChanged: (val) {},
                            hintText: "Email",
                            obsecureText: false,
                            onVaildator: null,
                            suffixIcon: null,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Flexible(
                          child: RentopTextFields.rentopTextField(
                            context: context,
                            onChanged: (val) {},
                            hintText: "Phone Number",
                            obsecureText: false,
                            onVaildator: null,
                            suffixIcon: null,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RentopTextFields.rentopTextField(
                            context: context,
                            onChanged: (val) {},
                            hintText: "First Name",
                            obsecureText: false,
                            onVaildator: null,
                            suffixIcon: null,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Flexible(
                          child: RentopTextFields.rentopTextField(
                            context: context,
                            onChanged: (val) {},
                            hintText: "Last Name",
                            obsecureText: false,
                            onVaildator: null,
                            suffixIcon: null,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RentopTextFields.rentopTextField(
                            context: context,
                            onChanged: (val) {},
                            hintText: "Password",
                            obsecureText: false,
                            onVaildator: null,
                            suffixIcon: null,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Flexible(
                          child: RentopTextFields.rentopTextField(
                            context: context,
                            onChanged: (val) {},
                            hintText: "Repeat Password",
                            obsecureText: false,
                            onVaildator: null,
                            suffixIcon: null,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (val) {},
                          activeColor: mainColor,
                        ),
                        RichText(
                          text: TextSpan(
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: minorColor,
                                      fontSize: 16,
                                    ),
                            children: <TextSpan>[
                              const TextSpan(
                                text: "Accept ",
                              ),
                              TextSpan(
                                text: 'terms ',
                                style: TextStyle(
                                  color: mainColor,
                                ),
                              ),
                              const TextSpan(text: 'and '),
                              TextSpan(
                                text: 'conditions.',
                                style: TextStyle(
                                  color: mainColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    RentopButtons.rentopButton(
                      text: "Create account",
                      context: context,
                      onBtnPressed: () {},
                      width: double.infinity,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
