import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/sign_in/sign_in_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                Flushbar(
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  message: failure.map(
                    serverError: (_) => 'Server Error',
                    notFound: (_) => 'Not Found',
                    badRequest: (_) => 'Bad Request',
                    unauthorized: (_) => 'Unauthorized Request',
                  ),
                ).show(context);
              },
              (_) {
                Navigator.pushNamed(context, '/Home');
              },
            ),
          );
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(Assets.carEclipse),
                    SafeArea(
                      child: RentopButtons.rentopReturnButton(
                        context: context,
                      ),
                    ),
                  ],
                ),
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
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        RentopTextFields.rentopTextField(
                          context: context,
                          onChanged: (val) => context
                              .read<SignInBloc>()
                              .add(SignInEvent.emailAddressChanged(val)),
                          hintText: "Username or email",
                          onVaildator: context
                              .read<SignInBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Wrong Email',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          obsecureText: false,
                          suffixIcon: context
                              .read<SignInBloc>()
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
                          height: 24,
                        ),
                        RentopTextFields.rentopTextField(
                          context: context,
                          onChanged: (val) => context
                              .read<SignInBloc>()
                              .add(SignInEvent.passwordChanged(val)),
                          onVaildator: context
                              .read<SignInBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidPassword: (_) => 'Wrong Password',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          hintText: "Password",
                          obsecureText: true,
                          suffixIcon: context
                              .read<SignInBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidPassword: (_) =>
                                      Image.asset(Assets.errorIcon),
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          controller: null,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        RentopButtons.rentopTextButtonWithIcon(
                          onBtnPressed: () =>
                              Navigator.pushNamed(context, '/ForgetPassword'),
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
                          onBtnPressed: () => context
                              .read<SignInBloc>()
                              .add(const SignInEvent.btnPressed()),
                          width: double.infinity,
                          isLoading: state.isSubmitting,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
