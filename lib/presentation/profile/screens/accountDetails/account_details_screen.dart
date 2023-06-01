import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/repositories/accountDetails/account_details_bloc.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AccountDetailsBloc, AccountDetailsState>(
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
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
                    notFound: (_) => "Not Found",
                    badRequest: (_) => "Bad Request",
                    unauthorized: (_) => "Unauthorized",
                  ),
                ).show(context);
              },
              (_) {
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.fetchUserProfileData());
                Navigator.pop(context);
              },
            ),
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 23),
                    child: Column(
                      children: [
                        RentopCards.rentopAppBar(
                            title: 'Account Details',
                            context: context,
                            backBtn: true,
                            btn: null,
                            backCallback: () => context
                                .read<AccountDetailsBloc>()
                                .add(const AccountDetailsEvent.clear())),
                        const SizedBox(
                          height: 24,
                        ),
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: RentopTextFields.rentopTextField(
                                        context: context,
                                        onChanged: (val) {},
                                        hintText: "First Name",
                                        // onVaildator: null,
                                        suffixIcon: null,
                                        obsecureText: false,
                                        controller: state.firstName,
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
                                        // onVaildator: null,
                                        suffixIcon: null,
                                        obsecureText: false,
                                        controller: state.lastName,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) {},
                                  hintText: "Display Name",
                                  // onVaildator: null,
                                  suffixIcon: null,
                                  obsecureText: false,
                                  controller: state.displayName,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
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
                    text: "Save Changes",
                    context: context,
                    onBtnPressed: () => context
                        .read<AccountDetailsBloc>()
                        .add(const AccountDetailsEvent.btnPressed()),
                    width: 200,
                    isLoading: state.isSubmitting,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
