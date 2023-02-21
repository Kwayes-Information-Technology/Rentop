import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentop/application/repositories/cars/cars_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RentopCards.rentopAppBar(
              title: 'Explore',
              context: context,
              backBtn: false,
              btn: IconButton(
                onPressed: () => Navigator.pushNamed(context, '/Filter'),
                icon: Image.asset(
                  Assets.filterIcon,
                  color: mainColor,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<CarsBloc, CarsState>(
              builder: (context, state) {
                if (state.selectedCarBrand != null ||
                    state.selectedCarCategory != null ||
                    state.selectedCarRegion != null) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Wrap(
                      spacing: 15,
                      children: [
                        if (state.selectedCarBrand != null) ...[
                          InputChip(
                            label: Text(
                              state.selectedCarBrand!.name,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            selected: true,
                            selectedColor: Colors.white,
                            checkmarkColor: mainColor,
                            showCheckmark: false,
                            elevation: 2,
                            onSelected: (value) {},
                            onDeleted: () => context
                                .read<CarsBloc>()
                                .add(const CarsEvent.removeCarBrandFilter()),
                          ),
                        ],
                        if (state.selectedCarCategory != null) ...[
                          InputChip(
                            label: Text(
                              state.selectedCarCategory!.name,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            selected: true,
                            selectedColor: Colors.white,
                            checkmarkColor: mainColor,
                            showCheckmark: false,
                            elevation: 2,
                            onSelected: (value) {},
                            onDeleted: () => context
                                .read<CarsBloc>()
                                .add(const CarsEvent.removeCarCategoryFilter()),
                          ),
                        ],
                        if (state.selectedCarRegion != null) ...[
                          InputChip(
                            padding: const EdgeInsets.all(2.0),
                            label: Text(
                              state.selectedCarRegion!.name,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            selected: true,
                            selectedColor: Colors.white,
                            checkmarkColor: mainColor,
                            showCheckmark: false,
                            elevation: 2,
                            onSelected: (value) {},
                            onDeleted: () => context
                                .read<CarsBloc>()
                                .add(const CarsEvent.removeCarRegionFilter()),
                          ),
                        ],
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<CarsBloc, CarsState>(
              builder: (context, state) {
                return Expanded(
                  child: SmartRefresher(
                    controller: state.refreshControlloer,
                    enablePullUp: true,
                    onRefresh: () => context
                        .read<CarsBloc>()
                        .add(const CarsEvent.refreshData()),
                    onLoading: () => context
                        .read<CarsBloc>()
                        .add(const CarsEvent.fetchCarsData()),
                    child: ListView.builder(
                      itemCount: state.cars.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return RentopCards.rentopCarCard(
                          car: state.cars[index],
                          context: context,
                          onCarTapped: (car) => Navigator.pushNamed(
                            context,
                            '/CarDetails',
                            arguments: car,
                          ),
                        );
                      },
                    ),

                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     if (state.selectedCarBrand != null ||
                    //         state.selectedCarCategory != null ||
                    //         state.selectedCarRegion != null) ...[
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(
                    //           horizontal: 30,
                    //         ),
                    //         child: Wrap(
                    //           spacing: 15,
                    //           children: [
                    //             if (state.selectedCarBrand != null) ...[
                    //               InputChip(
                    //                 label: Text(
                    //                   state.selectedCarBrand!.name,
                    //                   style:
                    //                       Theme.of(context).textTheme.bodyText2,
                    //                 ),
                    //                 selected: true,
                    //                 selectedColor: Colors.white,
                    //                 checkmarkColor: mainColor,
                    //                 showCheckmark: false,
                    //                 elevation: 2,
                    //                 onSelected: (value) {},
                    //                 onDeleted: () => context
                    //                     .read<CarsBloc>()
                    //                     .add(const CarsEvent
                    //                         .removeCarBrandFilter()),
                    //               ),
                    //             ],
                    //             if (state.selectedCarCategory != null) ...[
                    //               InputChip(
                    //                 label: Text(
                    //                   state.selectedCarCategory!.name,
                    //                   style:
                    //                       Theme.of(context).textTheme.bodyText2,
                    //                 ),
                    //                 selected: true,
                    //                 selectedColor: Colors.white,
                    //                 checkmarkColor: mainColor,
                    //                 showCheckmark: false,
                    //                 elevation: 2,
                    //                 onSelected: (value) {},
                    //                 onDeleted: () => context
                    //                     .read<CarsBloc>()
                    //                     .add(const CarsEvent
                    //                         .removeCarCategoryFilter()),
                    //               ),
                    //             ],
                    //             if (state.selectedCarRegion != null) ...[
                    //               InputChip(
                    //                 padding: const EdgeInsets.all(2.0),
                    //                 label: Text(
                    //                   state.selectedCarRegion!.name,
                    //                   style:
                    //                       Theme.of(context).textTheme.bodyText2,
                    //                 ),
                    //                 selected: true,
                    //                 selectedColor: Colors.white,
                    //                 checkmarkColor: mainColor,
                    //                 showCheckmark: false,
                    //                 elevation: 2,
                    //                 onSelected: (value) {},
                    //                 onDeleted: () => context
                    //                     .read<CarsBloc>()
                    //                     .add(const CarsEvent
                    //                         .removeCarRegionFilter()),
                    //               ),
                    //             ],
                    //           ],
                    //         ),
                    //       )
                    //     ],
                    //     const SizedBox(
                    //       height: 15,
                    //     ),
                    //     Expanded(
                    //       child: ListView.builder(
                    //         itemCount: state.cars.length,
                    //         shrinkWrap: true,
                    //         itemBuilder: (context, index) {
                    //           return RentopCards.rentopCarCard(
                    //             car: state.cars[index],
                    //             context: context,
                    //             onCarTapped: (car) => Navigator.pushNamed(
                    //               context,
                    //               '/CarDetails',
                    //               arguments: car,
                    //             ),
                    //           );
                    //         },
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
