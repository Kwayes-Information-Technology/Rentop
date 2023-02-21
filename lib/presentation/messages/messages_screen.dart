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
              btn: null,
            ),
            const SizedBox(
              height: 25,
            ),
            RentopCards.rentopMessageCard(
              carPhoto:
                  "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
              carName: "Lamborghini Urus",
              displayName: "Jamal Nurmagomedov",
              messages: 2,
              lastMsg: "Hey !",
              lastMsgDate: DateTime.now(),
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
