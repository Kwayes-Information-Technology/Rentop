import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/reset_password/reset_password_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class ValidateResetCodeScreen extends StatelessWidget {
  const ValidateResetCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
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
                  style: Theme.of(context).textTheme.displayLarge,
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
                          "A password reset code has been sent to your email address.",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        RentopTextFields.rentopTextField(
                          context: context,
                          onChanged: (val) => context
                              .read<ResetPasswordBloc>()
                              .add(ResetPasswordEvent.resetCodeChanged(val)),
                          hintText: "Code",
                          validator: (_) {
                            return state.code.value.fold(
                              (f) {
                                return f.maybeMap(
                                  invalidResetCode: (_) => 'Invalid Code',
                                  orElse: () => null,
                                );
                              },
                              (_) => null,
                            );
                          },
                          // onVaildator: context
                          //     .read<ResetPasswordBloc>()
                          //     .state
                          //     .code
                          //     .value
                          //     .fold(
                          //       (f) => f.maybeMap(
                          //         invalidResetCode: (_) => "Invalid Code",
                          //         orElse: () => null,
                          //       ),
                          //       (_) => null,
                          //     ),
                          suffixIcon: context
                              .read<ResetPasswordBloc>()
                              .state
                              .code
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidResetCode: (_) =>
                                      Image.asset(Assets.errorIcon),
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          obsecureText: false,
                          controller: null,
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        RentopButtons.rentopButton(
                          text: "Validate Code",
                          context: context,
                          onBtnPressed: () => context
                              .read<ResetPasswordBloc>()
                              .add(
                                  const ResetPasswordEvent.validateResetCode()),
                          width: double.infinity,
                          isLoading: state.isSubmitting,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
        listener: (context, state) {
          state.validateCodeFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                Flushbar(
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  message: failure.map(
                    serverError: (_) => 'Server Error',
                    badEmail: (_) => 'No user found with this email address.',
                    badRequest: (_) => 'The reset code provided is not valid.',
                  ),
                ).show(context);
              },
              (_) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/ResetPasswordScreen',
                  (Route<dynamic> route) => false,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
