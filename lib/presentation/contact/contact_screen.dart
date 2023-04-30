import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/repositories/contactUs/contact_us_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ContactUsBloc, ContactUsState>(
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
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
                Flushbar(
                  backgroundColor: Colors.green,
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  message: "Your message is sent!",
                ).show(context);
              },
            ),
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 23),
                    child: Column(
                      children: [
                        RentopCards.rentopAppBar(
                          title: 'Contact Us',
                          context: context,
                          backBtn: true,
                          btn: null,
                          backCallback: () => context
                              .read<ContactUsBloc>()
                              .add(const ContactUsEvent.clear()),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          autovalidateMode: state.showErrorMessages
                              ? AutovalidateMode.always
                              : AutovalidateMode.disabled,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: RentopTextFields.rentopTextField(
                                        context: context,
                                        onChanged: (val) => context
                                            .read<ContactUsBloc>()
                                            .add(
                                              ContactUsEvent.firstNameChanged(
                                                val,
                                              ),
                                            ),
                                        hintText: "First Name",
                                        onVaildator: state.firstName.value.fold(
                                          (f) => f.maybeMap(
                                            invalidFirstName: (_) =>
                                                "Invalid First Name",
                                            orElse: () => null,
                                          ),
                                          (_) => null,
                                        ),
                                        suffixIcon: state.firstName.value.fold(
                                          (f) => f.maybeMap(
                                            invalidFirstName: (_) =>
                                                Image.asset(Assets.errorIcon),
                                            orElse: () => null,
                                          ),
                                          (_) => null,
                                        ),
                                        obsecureText: false,
                                        controller: null,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Flexible(
                                      child: RentopTextFields.rentopTextField(
                                        context: context,
                                        onChanged: (val) => context
                                            .read<ContactUsBloc>()
                                            .add(
                                              ContactUsEvent.lastNameChanged(
                                                val,
                                              ),
                                            ),
                                        hintText: "Last Name",
                                        onVaildator: state.lastName.value.fold(
                                          (f) => f.maybeMap(
                                            invalidLastName: (_) =>
                                                "Invalid Last Name",
                                            orElse: () => null,
                                          ),
                                          (_) => null,
                                        ),
                                        suffixIcon: state.lastName.value.fold(
                                          (f) => f.maybeMap(
                                            invalidLastName: (_) =>
                                                Image.asset(Assets.errorIcon),
                                            orElse: () => null,
                                          ),
                                          (_) => null,
                                        ),
                                        obsecureText: false,
                                        controller: null,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) =>
                                      context.read<ContactUsBloc>().add(
                                            ContactUsEvent.emailAddressChanged(
                                              val,
                                            ),
                                          ),
                                  hintText: "Email",
                                  onVaildator: state.email.value.fold(
                                    (f) => f.maybeMap(
                                      invalidEmail: (_) =>
                                          "Invalid Email Address",
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                                  suffixIcon: state.email.value.fold(
                                    (f) => f.maybeMap(
                                      invalidEmail: (_) =>
                                          Image.asset(Assets.errorIcon),
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                                  obsecureText: false,
                                  controller: null,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) =>
                                      context.read<ContactUsBloc>().add(
                                            ContactUsEvent.phoneNumberChanged(
                                              val,
                                            ),
                                          ),
                                  hintText: "Phone Number",
                                  onVaildator: state.phone.value.fold(
                                    (f) => f.maybeMap(
                                      invalidPhoneNumber: (_) =>
                                          "Invalid Phone Number",
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                                  suffixIcon: state.phone.value.fold(
                                    (f) => f.maybeMap(
                                      invalidPhoneNumber: (_) =>
                                          Image.asset(Assets.errorIcon),
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                                  obsecureText: false,
                                  controller: null,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) => context
                                      .read<ContactUsBloc>()
                                      .add(ContactUsEvent.messageChanged(val)),
                                  hintText: "Message",
                                  onVaildator: state.message.isEmpty
                                      ? "Message can't be empty!"
                                      : null,
                                  suffixIcon: state.message.isEmpty
                                      ? Image.asset(Assets.errorIcon)
                                      : null,
                                  obsecureText: false,
                                  controller: null,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: RentopButtons.rentopButton(
                    text: "Send Message",
                    context: context,
                    onBtnPressed: () => context
                        .read<ContactUsBloc>()
                        .add(const ContactUsEvent.btnPressed()),
                    width: double.infinity,
                    isLoading: state.isSubmitting,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
