import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/repositories/profile/profile_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                    title: 'My Profile',
                    context: context,
                    backBtn: true,
                    btn: null,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  RentopCards.rentopProfileCardV4(
                    userPhoto: state.profile!.userAvatar,
                    userGravatar: state.profile!.userAvatarGravatar!,
                    userName: state.profile!.firstName!,
                    context: context,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GridView.count(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    shrinkWrap: true,
                    primary: false,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: [
                      RentopButtons.rentopButtonV2(
                        icon: Assets.ordersIcon,
                        btnTxt: "Orders",
                        onBtnPressed: () => Navigator.pushNamed(
                          context,
                          '/Orders',
                        ),
                        context: context,
                      ),
                      RentopButtons.rentopButtonV2(
                        icon: Assets.addressIcon,
                        btnTxt: "Address",
                        onBtnPressed: () => Navigator.pushNamed(
                          context,
                          '/Address',
                        ),
                        context: context,
                      ),
                      RentopButtons.rentopButtonV2(
                        icon: Assets.logoutIcon,
                        btnTxt: "Logout",
                        onBtnPressed: () {},
                        context: context,
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
