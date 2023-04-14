import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/repositories/cars/cars_bloc.dart';
import 'package:rentop/application/repositories/listings/listings_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_category.dart';
import 'package:rentop/infrastructure/models/car_region.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 23,
                ),
                child: BlocBuilder<CarsBloc, CarsState>(
                  builder: (carsContext, carsState) {
                    return Column(
                      children: [
                        RentopCards.rentopAppBar(
                          title: "Filter",
                          context: context,
                          backBtn: true,
                          btn: null,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RentopButtons.rentopTextButtonWithIcon(
                                    onBtnPressed: () => carsContext
                                        .read<CarsBloc>()
                                        .add(const CarsEvent
                                            .clearFilterationButton()),
                                    btnText: 'Clear',
                                    imagePath: Assets.clearIcon,
                                    context: context,
                                  )
                                ],
                              ),
                              BlocBuilder<ListingsBloc, ListingsState>(
                                builder: (context, state) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RentopButtons.rentopFilterDropDownButton(
                                        title: "Location",
                                        selectedValue:
                                            carsState.selectedCarRegion,
                                        items: state.carRegions,
                                        context: context,
                                        onChanged: (item) => carsContext
                                            .read<CarsBloc>()
                                            .add(CarsEvent
                                                .carRegionSelectedChanged(
                                              item! as CarRegion,
                                            )),
                                      ),
                                      // const SizedBox(
                                      //   height: 15,
                                      // ),
                                      // RentopButtons.rentopFilterPriceRange(
                                      //   title: 'Price Range',
                                      //   context: context,
                                      //   fromOnChanged: (val) {},
                                      //   toOnChanged: (val) {},
                                      // ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      RentopButtons.rentopFilterDropDownButton(
                                        title: "Car Categories",
                                        selectedValue:
                                            carsState.selectedCarCategory,
                                        items: state.carCategories,
                                        context: context,
                                        onChanged: (item) => carsContext
                                            .read<CarsBloc>()
                                            .add(CarsEvent
                                                .carCategorySelectedChanged(
                                              item! as CarCategory,
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      RentopButtons.rentopFilterDropDownButton(
                                        title: "Car Brands",
                                        selectedValue:
                                            carsState.selectedCarBrand,
                                        items: state.carBrands,
                                        context: context,
                                        onChanged: (item) => carsContext
                                            .read<CarsBloc>()
                                            .add(CarsEvent
                                                .carBrandSelectedChanged(
                                              item! as CarBrand,
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Date Range",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      SfDateRangePicker(
                                        controller: carsContext
                                            .read<CarsBloc>()
                                            .state
                                            .dateRangeController,
                                        initialDisplayDate: DateTime.now(),
                                        selectionMode:
                                            DateRangePickerSelectionMode.range,
                                        minDate: DateTime.now(),
                                        selectionColor: mainColor,
                                        monthCellStyle:
                                            DateRangePickerMonthCellStyle(
                                          todayTextStyle: TextStyle(
                                            color: mainColor,
                                          ),
                                        ),
                                        rangeSelectionColor:
                                            mainColor.withOpacity(0.5),
                                        todayHighlightColor: mainColor,
                                        startRangeSelectionColor: mainColor,
                                        endRangeSelectionColor: mainColor,
                                        headerStyle: DateRangePickerHeaderStyle(
                                          textAlign: TextAlign.center,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 14,
                                                color: const Color.fromRGBO(
                                                  0,
                                                  0,
                                                  0,
                                                  0.7,
                                                ),
                                              ),
                                        ),
                                        onSelectionChanged: (args) =>
                                            carsContext
                                                .read<CarsBloc>()
                                                .add(CarsEvent.dateRangeChanged(
                                                  args.value,
                                                )),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: RentopButtons.rentopButton(
                text: 'Save changes',
                context: context,
                onBtnPressed: () {
                  context.read<CarsBloc>().add(
                        const CarsEvent.filterationButton(),
                      );
                  Navigator.pop(context);
                },
                width: 200,
                isLoading: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
