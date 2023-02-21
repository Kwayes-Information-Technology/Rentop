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
        child: Column(
          children: [
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                if (state.profile != null) {
                  return RentopCards.rentopProfileCardV2(
                    userPhoto: state.profile!.avater!,
                    userName: state.profile!.firstName!,
                    context: context,
                  );
                } else {
                  return Container();
                }
              },
            ),
            const SizedBox(
              height: 31,
            ),
            RentopButtons.rentopTextButton(
              btnText: 'About Us',
              context: context,
              onBtnPressed: () {},
            ),
            RentopButtons.rentopTextButton(
              btnText: 'FAQs',
              context: context,
              onBtnPressed: () => Navigator.pushNamed(context, '/FAQ'),
            ),
            RentopButtons.rentopTextButton(
              btnText: 'Contact',
              context: context,
              onBtnPressed: () => Navigator.pushNamed(context, '/Contact'),
            )
          ],
        ),
      ),
    );
  }
}
