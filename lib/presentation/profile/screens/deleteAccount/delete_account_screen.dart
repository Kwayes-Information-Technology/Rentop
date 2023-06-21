import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/repositories/deleteAccount/delete_account_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<DeleteAccountBloc, DeleteAccountState>(
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
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
                Flushbar(
                  backgroundColor: Colors.green,
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  message: "We have received your request!",
                ).show(context);
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/Home",
                  (route) => false,
                );
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
                          title: 'Delete My Account',
                          context: context,
                          backBtn: true,
                          btn: null,
                          backCallback: () => context
                              .read<DeleteAccountBloc>()
                              .add(const DeleteAccountEvent.clear()),
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
                                RentopTextFields.rentopTextField(
                                    context: context,
                                    onChanged: (val) => context
                                        .read<DeleteAccountBloc>()
                                        .add(DeleteAccountEvent.reasonChanged(
                                            val)),
                                    hintText: "Reason",
                                    suffixIcon: state.reason.isEmpty
                                        ? Image.asset(Assets.errorIcon)
                                        : null,
                                    obsecureText: false,
                                    controller: null,
                                    validator: (_) {
                                      if (state.reason.isEmpty) {
                                        return "Reason can't be empty!";
                                      } else {
                                        return null;
                                      }
                                    }),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Please note that It will take us 14 working days to process your request. You're encourged to not use your account in this period as well as if you wish to cancel the delete request please contact us through contact@rentop.co",
                                  textAlign: TextAlign.justify,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontFamily: "Open Sans",
                                        color: mainColor,
                                      ),
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
                    text: "Send",
                    context: context,
                    onBtnPressed: () => context
                        .read<DeleteAccountBloc>()
                        .add(const DeleteAccountEvent.btnPressed()),
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
