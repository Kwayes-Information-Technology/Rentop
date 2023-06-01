import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/sign_in/sign_in_bloc.dart';
import 'package:rentop/application/sign_up/sign_up_bloc.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_logo.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RentopButtons.rentopReturnButton(context: context),
              SizedBox(
                height: (MediaQuery.of(context).size.height - 47) / 2,
                child: rentopLogoV2(context: context),
              ),
              RentopButtons.rentopGradientButton(
                text: "Sign in",
                context: context,
                onBtnPressed: () {
                  context
                      .read<SignInBloc>()
                      .add(const SignInEvent.resetState());
                  Navigator.pushNamed(context, '/SignIn');
                },
              ),
              const SizedBox(
                height: 24,
              ),
              RentopButtons.rentopOutlineButton(
                text: "Sign Up",
                context: context,
                onBtnPressed: () {
                  context
                      .read<SignUpBloc>()
                      .add(const SignUpEvent.resetState());
                  Navigator.pushNamed(context, '/SignUp');
                },
                color: mainShadeColor,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Or",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: minorShadeColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
              ),
              const SizedBox(
                height: 24,
              ),
              RentopButtons.rentopOutlineButton(
                text: "Continue as a Guest",
                context: context,
                onBtnPressed: () => Navigator.pushNamed(context, '/Home'),
                color: minorColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
