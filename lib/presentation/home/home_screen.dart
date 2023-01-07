import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_type.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: mainColor,
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 23),
            child: Column(
              children: [
                RentopCards.rentopProfileCard(
                  userPhoto:
                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
                  userName: "Dalia",
                  notificationsActive: true,
                  context: context,
                ),
                const SizedBox(
                  height: 23,
                ),
                SizedBox(
                  height: 131,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tempCarBrands.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return RentopCards.rentopCarBrand(
                        carBrand: tempCarBrands[index],
                        context: context,
                        index: index,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                SizedBox(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tempCarTypes.length,
                      itemBuilder: (context, index) {
                        return RentopCards.rentopCarType(
                          carType: tempCarTypes[index],
                          context: context,
                          index: index,
                          selectedCarTypeIndex: 0,
                        );
                      },
                    ),
                  ),
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
                ListView.builder(
                  itemCount: tempCars.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return RentopCards.rentopCarCard(
                      car: tempCars[index],
                      context: context,
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
