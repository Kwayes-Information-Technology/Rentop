import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/repositories/profile/profile_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return Column(
                children: [
                  RentopCards.rentopAppBar(
                    title: "My Address",
                    context: context,
                    backBtn: true,
                    btn: null,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  RentopCards.rentopBillingAddressCard(
                    billingInfo: state.profile!.billing,
                    context: context,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RentopCards.rentopShippingAddressCard(
                    shippingInfo: state.profile!.shipping,
                    context: context,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
