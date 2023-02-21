import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/map/map_screen.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_review.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  final controller = CarouselController();

  final Completer<GoogleMapController> _mapController = Completer();
  late final GoogleMapController? mapController;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final selectedCar = ModalRoute.of(context)!.settings.arguments! as Car;
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RentopCards.rentopAppBar(
                      title: selectedCar.name,
                      context: context,
                      backBtn: true,
                      btn: null,
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: CarouselSlider(
                        carouselController: controller,
                        options: CarouselOptions(
                          height: 220,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        items: selectedCar.images.map((image) {
                          return Builder(
                            builder: (context) {
                              return Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                    image: NetworkImage(image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 98,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: ListView.builder(
                        itemCount: selectedCar.images.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => controller.animateToPage(index),
                            child: Container(
                              width: 86,
                              margin: const EdgeInsets.symmetric(horizontal: 9),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    selectedCar.images[index],
                                  ),
                                  fit: BoxFit.cover,
                                  colorFilter: _currentIndex == index
                                      ? null
                                      : ColorFilter.mode(
                                          Colors.white.withOpacity(0.6),
                                          BlendMode.lighten,
                                        ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    GridView.builder(
                      itemCount: selectedCar.carSpecifications.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 6,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            selectedCar.carSpecifications[index].icon,
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                selectedCar.carSpecifications[index].name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 13, color: minorShadeColor),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Text(
                        selectedCar.content,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    GridView.builder(
                      itemCount: selectedCar.carFeatures.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 6,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            selectedCar.carFeatures[index].icon,
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                selectedCar.carFeatures[index].name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 13, color: minorShadeColor),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    RentopCards.rentopProfileCardV3(
                      userPhoto: selectedCar.authorAvater,
                      userName: selectedCar.authorName,
                      context: context,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 203,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: MapBody(
                          location: selectedCar.location,
                          onMapCreated: (tempController) async {
                            _mapController.complete(tempController);
                            mapController = tempController;
                          },
                          carId: selectedCar.id.toString(),
                        ),
                      ),
                    ),
                    if (selectedCar.totalReviews > 0) ...[
                      const SizedBox(
                        height: 30,
                      ),
                      RentopCards.rentopRatingCard(
                        totalReviews: selectedCar.totalReviews,
                        avgRating: selectedCar.rating!,
                        cleanlinessRating: selectedCar.cleanlinessRating!,
                        checkinRating: selectedCar.checkinRating!,
                        locationRating: selectedCar.locationRating!,
                        communcationRating: selectedCar.commuincationRating!,
                        accuracyRating: selectedCar.accuracyRating!,
                        valueRating: selectedCar.valueRating!,
                        context: context,
                      ),
                    ],
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    ListView.builder(
                      itemCount: selectedCar.reviews.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return RentopReview.rentopCarReview(
                          review: selectedCar.reviews[index],
                          context: context,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
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
                text:
                    "AED/${selectedCar.price == selectedCar.price.roundToDouble() ? selectedCar.price.toStringAsFixed(0) : selectedCar.price.toStringAsFixed(2)} / Day - reserve now",
                context: context,
                onBtnPressed: () {},
                width: 200,
              ),
            ),
          )
        ],
      ),
    );
  }
}
