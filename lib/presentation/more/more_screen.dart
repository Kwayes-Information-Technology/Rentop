import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Authenticated) {
              return Column(
                children: [
                  RentopCards.rentopProfileCardV2(
                    userPhoto: state.profile.userAvatar,
                    userGravatar: state.profile.userAvatarGravatar!,
                    userName: state.profile.firstName!,
                    context: context,
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'My Orders',
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(
                      context,
                      '/Orders',
                    ),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'FAQs',
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(context, '/FAQ'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Terms & Conditions',
                    context: context,
                    onBtnPressed: () =>
                        Navigator.pushNamed(context, '/TermsAndConditions'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Privacy Policy',
                    context: context,
                    onBtnPressed: () =>
                        Navigator.pushNamed(context, '/PrivacyPolicy'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Contact Us',
                    context: context,
                    onBtnPressed: () =>
                        Navigator.pushNamed(context, '/Contact'),
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  RentopCards.rentopGuestUserCard(context: context),
                  const SizedBox(
                    height: 31,
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Sign In',
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(context, '/SignIn'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Sign Up',
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(context, '/SignUp'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'FAQs',
                    context: context,
                    onBtnPressed: () => Navigator.pushNamed(context, '/FAQ'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Terms & Conditions',
                    context: context,
                    onBtnPressed: () =>
                        Navigator.pushNamed(context, '/TermsAndConditions'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Privacy Policy',
                    context: context,
                    onBtnPressed: () =>
                        Navigator.pushNamed(context, '/PrivacyPolicy'),
                  ),
                  RentopButtons.rentopTextButton(
                    btnText: 'Contact Us',
                    context: context,
                    onBtnPressed: () =>
                        Navigator.pushNamed(context, '/Contact'),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
