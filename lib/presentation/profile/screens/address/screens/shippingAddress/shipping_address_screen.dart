import 'package:another_flushbar/flushbar.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/repositories/shippingAddress/shipping_address_bloc.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ShippingAddressBloc, ShippingAddressState>(
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
                          title: "My Shipping Address",
                          context: context,
                          backBtn: true,
                          btn: null,
                          backCallback: () => context
                              .read<ShippingAddressBloc>()
                              .add(const ShippingAddressEvent.clear()),
                        ),
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
                                  hintText: "Company name (optional)",
                                  // onVaildator: null,
                                  suffixIcon: null,
                                  obsecureText: false,
                                  controller: state.companyName,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Container(
                                  height: 51,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 13,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF1F1F1),
                                    borderRadius: BorderRadius.circular(13),
                                    border: Border.all(
                                      color: minorShadeColor,
                                      width: 0,
                                    ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () => showCountryPicker(
                                      context: context,
                                      onSelect: (country) => context
                                          .read<ShippingAddressBloc>()
                                          .add(ShippingAddressEvent
                                              .countryChanged(
                                                  country.countryCode)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          state.country.isEmpty
                                              ? "Select Country"
                                              : state.country,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(fontSize: 16),
                                        ),
                                        const Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) {},
                                  hintText: "Address 1",
                                  // onVaildator: null,
                                  suffixIcon: null,
                                  obsecureText: false,
                                  controller: state.address1,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) {},
                                  hintText: "Address 2 (optional)",
                                  // onVaildator: null,
                                  suffixIcon: null,
                                  obsecureText: false,
                                  controller: state.address2,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) {},
                                  hintText: "City",
                                  // onVaildator: null,
                                  suffixIcon: null,
                                  obsecureText: false,
                                  controller: state.city,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) {},
                                  hintText: "State (optional)",
                                  // onVaildator: null,
                                  suffixIcon: null,
                                  obsecureText: false,
                                  controller: state.state,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                RentopTextFields.rentopTextField(
                                  context: context,
                                  onChanged: (val) {},
                                  hintText: "Postcode (optional)",
                                  // onVaildator: null,
                                  suffixIcon: null,
                                  obsecureText: false,
                                  controller: state.postcode,
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
                        .read<ShippingAddressBloc>()
                        .add(const ShippingAddressEvent.btnPressed()),
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
