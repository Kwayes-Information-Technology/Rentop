import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/sign_in/sign_in_bloc.dart';
import 'package:rentop/application/sign_up/sign_up_bloc.dart';
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
      body: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) {
                Flushbar(
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  backgroundGradient: LinearGradient(
                    colors: [
                      mainColor,
                      mainShadeColor,
                    ],
                  ),
                  boxShadows: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  message: failure.map(
                    serverError: (_) => 'Server Error',
                    notFound: (_) => 'Not Found',
                    badRequest: (_) => 'Bad Request',
                    unauthorized: (_) => 'Unauthorized Request',
                  ),
                ).show(context);
              },
              (_) {
                Flushbar(
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  backgroundGradient: LinearGradient(
                    colors: [
                      mainColor,
                      mainShadeColor,
                    ],
                  ),
                  boxShadows: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  message: 'Registered Successfully! Please Log-In.',
                ).show(context);
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
                          onChanged: (val) => context
                              .read<SignUpBloc>()
                              .add(SignUpEvent.usernameChanged(val)),
                          hintText: "Username",
                          obsecureText: false,
                          onVaildator: context
                              .read<SignUpBloc>()
                              .state
                              .username
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidUsername: (_) => 'Invalid Username',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          suffixIcon: context
                              .read<SignUpBloc>()
                              .state
                              .username
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidUsername: (_) =>
                                      Image.asset(Assets.errorIcon),
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: RentopTextFields.rentopTextField(
                                context: context,
                                onChanged: (val) => context
                                    .read<SignUpBloc>()
                                    .add(SignUpEvent.emailAddressChanged(val)),
                                hintText: "Email",
                                obsecureText: false,
                                onVaildator: context
                                    .read<SignUpBloc>()
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
                                    .read<SignUpBloc>()
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
                              ),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Flexible(
                              child: RentopTextFields.rentopTextField(
                                context: context,
                                onChanged: (val) => context
                                    .read<SignUpBloc>()
                                    .add(SignUpEvent.phoneNumberChanged(val)),
                                hintText: "Phone Number",
                                obsecureText: false,
                                onVaildator: context
                                    .read<SignUpBloc>()
                                    .state
                                    .phoneNumber
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidPhoneNumber: (_) =>
                                            'Invalid Phone Number',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                                suffixIcon: context
                                    .read<SignUpBloc>()
                                    .state
                                    .phoneNumber
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidPhoneNumber: (_) =>
                                            Image.asset(Assets.errorIcon),
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
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
                                onChanged: (val) => context
                                    .read<SignUpBloc>()
                                    .add(SignUpEvent.firstNameChagned(val)),
                                hintText: "First Name",
                                obsecureText: false,
                                onVaildator: context
                                    .read<SignUpBloc>()
                                    .state
                                    .firstName
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidFirstName: (_) =>
                                            'Invalid First Name',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                                suffixIcon: context
                                    .read<SignUpBloc>()
                                    .state
                                    .firstName
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidFirstName: (_) =>
                                            Image.asset(Assets.errorIcon),
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Flexible(
                              child: RentopTextFields.rentopTextField(
                                context: context,
                                onChanged: (val) => context
                                    .read<SignUpBloc>()
                                    .add(SignUpEvent.lastNameChanged(val)),
                                hintText: "Last Name",
                                obsecureText: false,
                                onVaildator: context
                                    .read<SignUpBloc>()
                                    .state
                                    .lastName
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidLastName: (_) =>
                                            'Invalid Last Name',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                                suffixIcon: context
                                    .read<SignUpBloc>()
                                    .state
                                    .lastName
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidLastName: (_) =>
                                            Image.asset(Assets.errorIcon),
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
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
                                onChanged: (val) => context
                                    .read<SignUpBloc>()
                                    .add(SignUpEvent.passwordChanged(val)),
                                hintText: "Password",
                                obsecureText: true,
                                onVaildator: context
                                    .read<SignUpBloc>()
                                    .state
                                    .password
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidPassword: (_) =>
                                            'Invalid Password',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                                suffixIcon: context
                                    .read<SignUpBloc>()
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
                              ),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Flexible(
                              child: RentopTextFields.rentopTextField(
                                context: context,
                                onChanged: (val) => context
                                    .read<SignUpBloc>()
                                    .add(
                                        SignUpEvent.repeatPasswordChanged(val)),
                                hintText: "Repeat Password",
                                obsecureText: true,
                                onVaildator: context
                                    .read<SignUpBloc>()
                                    .state
                                    .repeatPassword
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidRepeatPassword: (_) =>
                                            "Password not matching with repeat password",
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                                suffixIcon: context
                                    .read<SignUpBloc>()
                                    .state
                                    .repeatPassword
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidRepeatPassword: (_) =>
                                            Image.asset(Assets.errorIcon),
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
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
                              value: state.termsAndConditions,
                              onChanged: (val) => context
                                  .read<SignUpBloc>()
                                  .add(SignUpEvent.termsAndConditionsChanged(
                                      val!)),
                              activeColor: mainColor,
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
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
                          onBtnPressed: () => context
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.btnPressed()),
                          width: double.infinity,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
