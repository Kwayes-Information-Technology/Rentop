import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/repositories/cars/bloc/cars_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: Column(
            children: [
              RentopCards.rentopAppBar(
                title: 'Explore',
                context: context,
                backBtn: false,
              ),
              const SizedBox(
                height: 31,
              ),
              BlocBuilder<CarsBloc, CarsState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.cars.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return RentopCards.rentopCarCard(
                        car: state.cars[index],
                        context: context,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
