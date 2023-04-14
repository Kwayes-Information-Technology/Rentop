import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/reset_password/reset_password_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          state.codeSentFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                Flushbar(
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  message: failure.map(
                    serverError: (_) => 'Server Error',
                    badEmail: (_) => 'No user found with this email address.',
                    badRequest: (_) => 'Bad Request',
                  ),
                ).show(context);
              },
              (_) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/ValidateResetCode',
                  (Route<dynamic> route) => false,
                );
              },
            ),
          );
        },
        builder: (context, state) {
          return SingleChildScrollView(
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
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        "Please enter you e-mail address. You will recieve a code to create a new password via email.",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      RentopTextFields.rentopTextField(
                        context: context,
                        onChanged: (val) => context
                            .read<ResetPasswordBloc>()
                            .add(ResetPasswordEvent.emailAddressChanged(val)),
                        hintText: "Email",
                        obsecureText: false,
                        onVaildator: context
                            .read<ResetPasswordBloc>()
                            .state
                            .emailAddress
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid Email',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                        suffixIcon: context
                            .read<ResetPasswordBloc>()
                            .state
                            .emailAddress
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                invalidEmail: (_) =>
                                    Image.asset(Assets.errorIcon),
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                        controller: null,
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      RentopButtons.rentopButton(
                        text: "Reset password",
                        context: context,
                        onBtnPressed: () => context
                            .read<ResetPasswordBloc>()
                            .add(const ResetPasswordEvent.sendResetCode()),
                        width: double.infinity,
                        isLoading: state.isSubmitting,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}
