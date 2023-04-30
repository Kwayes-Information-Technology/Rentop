import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/repositories/favourites/favourites_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_widgets.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: Column(
          children: [
            RentopCards.rentopAppBar(
              title: 'Favourites',
              context: context,
              backBtn: false,
              btn: null,
            ),
            const SizedBox(
              height: 23,
            ),
            if (context.read<AuthBloc>().state is Authenticated)
              BlocBuilder<FavouritesBloc, FavouritesState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.favourites.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return RentopCards.rentopFavouriteCarCard(
                        carName: state.favourites[index].name,
                        carPhoto: state.favourites[index].images.first,
                        context: context,
                        onTapped: () => Navigator.pushNamed(
                          context,
                          '/CarDetails',
                          arguments: state.favourites[index],
                        ),
                        onRemoveTapped: () =>
                            context.read<FavouritesBloc>().add(
                                  FavouritesEvent.removeFavourite(
                                    state.favourites[index].id.toString(),
                                  ),
                                ),
                      );
                    },
                  );
                },
              )
            else
              rentopGuestUserWarning(context: context)
          ],
        ),
      ),
    );
  }
}
