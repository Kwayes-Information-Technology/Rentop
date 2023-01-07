import 'package:flutter/material.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: Column(
          children: [
            RentopCards.rentopAppBar(title: 'Favourites', context: context),
          ],
        ),
      ),
    );
  }
}
