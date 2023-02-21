import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentop/application/repositories/favourites/favourites_bloc.dart';
import 'package:rentop/application/repositories/profile/profile_bloc.dart';
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
            RentopCards.rentopAppBar(
              title: 'Favourites',
              context: context,
              backBtn: false,
              btn: null,
            ),
            const SizedBox(
              height: 25,
            ),
            BlocBuilder<FavouritesBloc, FavouritesState>(
              builder: (context, state) {
                // final profileBloc = context.read<ProfileBloc>();
                // if (profileBloc.state.profile != null) {
                //   if (profileBloc.state.profile!.metaData != null) {
                //     context.read<FavouritesBloc>().add(
                //         FavouritesEvent.favouritesIdChanged((context
                //                 .read<ProfileBloc>()
                //                 .state
                //                 .profile!
                //                 .metaData!
                //                 .where(
                //                     (element) => element.key == 'rz_favorites')
                //                 .first
                //                 .value as Map)
                //             .values
                //             .toString()));
                //   }
                // }
                return Expanded(
                  child: SmartRefresher(
                    controller: state.refreshController,
                    enablePullUp: true,
                    child: ListView.builder(
                      itemCount: state.cars.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return RentopCards.rentopFavouriteCarCard(
                          carName: state.cars[index].name,
                          carPhoto: state.cars[index].images.first,
                          context: context,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            // RentopCards.rentopFavouriteCarCard(
            //   carName: "Lamborghini Urus",
            //   carPhoto:
            //       "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
            //   context: context,
            // )
          ],
        ),
      ),
    );
  }
}
