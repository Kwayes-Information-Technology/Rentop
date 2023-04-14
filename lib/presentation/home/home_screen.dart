import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/repositories/cars/cars_bloc.dart';
import 'package:rentop/application/repositories/listings/listings_bloc.dart';
import 'package:rentop/application/repositories/profile/profile_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 23),
            child: Column(
              children: [
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    if (state.profile != null) {
                      return RentopCards.rentopProfileCard(
                        userPhoto: state.profile!.userAvatar,
                        userGravatar: state.profile!.userAvatarGravatar!,
                        userName: state.profile!.firstName!,
                        notificationsActive: true,
                        context: context,
                      );
                    } else {
                      return RentopCards.rentopGuestUserCard(context: context);
                    }
                  },
                ),
                const SizedBox(
                  height: 23,
                ),
                BlocBuilder<ListingsBloc, ListingsState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: 104,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.carBrands.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return RentopCards.rentopCarBrand(
                              carBrand: state.carBrands[index],
                              context: context,
                              index: index,
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 23,
                ),
                BlocBuilder<ListingsBloc, ListingsState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.carCategories.length,
                          itemBuilder: (context, index) {
                            return RentopCards.rentopCarCategory(
                              carCategory: state.carCategories[index],
                              context: context,
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 23,
                ),
                Text(
                  "Top rented cars",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 23,
                ),
                BlocBuilder<CarsBloc, CarsState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: state.topCars.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return RentopCards.rentopCarCard(
                          car: state.topCars[index],
                          context: context,
                          onCarTapped: (car) => Navigator.pushNamed(
                            context,
                            '/CarDetails',
                            arguments: car,
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
