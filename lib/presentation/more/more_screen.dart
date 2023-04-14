import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/repositories/profile/profile_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Column(
              children: [
                if (state.profile != null)
                  RentopCards.rentopProfileCardV2(
                    userPhoto: state.profile!.userAvatar,
                    userGravatar: state.profile!.userAvatarGravatar!,
                    userName: state.profile!.firstName!,
                    context: context,
                  )
                else
                  RentopCards.rentopGuestUserCard(context: context),
                const SizedBox(
                  height: 31,
                ),
                if (state.profile != null) ...[
                  RentopButtons.rentopTextButton(
                    btnText: 'My Orders',
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(
                      context,
                      '/Orders',
                    ),
                  ),
                ],
                if (state.profile == null) ...[
                  RentopButtons.rentopTextButton(
                    btnText: 'Sign in',
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(context, '/SignIn'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Sign Up',
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(context, '/SignUp'),
                  ),
                ],
                // RentopButtons.rentopTextButton(
                //   btnText: 'About Us',
                //   context: context,
                //   onBtnPressed: () {},
                // ),
                RentopButtons.rentopTextButton(
                  btnText: 'FAQs',
                  context: context,
                  onBtnPressed: () => Navigator.pushNamed(context, '/FAQ'),
                ),
                // RentopButtons.rentopTextButton(
                //   btnText: 'Contact',
                //   context: context,
                //   onBtnPressed: () => Navigator.pushNamed(context, '/Contact'),
                // )
              ],
            );
          },
        ),
      ),
    );
  }
}
