import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
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
            RentopCards.rentopProfileCardV2(
              userPhoto:
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
              userName: "Dalia",
              context: context,
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
              onBtnPressed: () => context.goNamed('FAQ'),
            ),
            RentopButtons.rentopTextButton(
              btnText: 'Contact',
              context: context,
              onBtnPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
