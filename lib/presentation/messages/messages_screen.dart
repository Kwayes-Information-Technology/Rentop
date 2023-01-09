import 'package:flutter/material.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: Column(
          children: [
            RentopCards.rentopAppBar(
              title: 'Messages',
              context: context,
              backBtn: false,
            ),
          ],
        ),
      ),
    );
  }
}
