import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:rentop/application/navigation/navigation_bloc.dart';
import 'package:rentop/application/repositories/cars/cars_bloc.dart';
import 'package:rentop/application/repositories/listings/listings_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_category.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_rating.dart';

class RentopCards {
  static Widget rentopProfileCard({
    required String userPhoto,
    required String userName,
    required bool notificationsActive,
    required BuildContext context,
  }) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            offset: Offset(0, -4),
            blurRadius: 56,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(userPhoto),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                "Hi, $userName.",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 18,
                    ),
              ),
            ],
          ),
          SvgPicture.asset(
            notificationsActive
                ? Assets.notificationActive
                : Assets.notificationInactive,
            color: mainColor,
          )
        ],
      ),
    );
  }

  static Widget rentopProfileCardV2({
    required String userPhoto,
    required String userName,
    required BuildContext context,
  }) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            offset: Offset(0, -4),
            blurRadius: 56,
          )
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(userPhoto),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 18,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Show Profile",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: mainShadeColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Widget rentopProfileCardV3({
    required String userPhoto,
    required String userName,
    required BuildContext context,
  }) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            offset: Offset(0, -4),
            blurRadius: 56,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(userPhoto),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                userName,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 18,
                    ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              color: mainColor,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  static Widget rentopCarBrand({
    required CarBrand carBrand,
    required BuildContext context,
    required int index,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GestureDetector(
        onTap: () {
          context
              .read<CarsBloc>()
              .add(CarsEvent.carBrandSelectedChanged(carBrand));
          context
              .read<NavigationBloc>()
              .add(const NavigationEvent.selectedIndexChanged(0));
        },
        child: Column(
          children: [
            Container(
              height: 101,
              width: 101,
              padding: const EdgeInsets.all(13),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.16),
                    blurRadius: 18,
                  ),
                ],
              ),
              child: Image.asset(carBrand.image),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              carBrand.name,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: mainColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget rentopCarCategory({
    required CarCategory carCategory,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        context
            .read<CarsBloc>()
            .add(CarsEvent.carCategorySelectedChanged(carCategory));
        context
            .read<NavigationBloc>()
            .add(const NavigationEvent.selectedIndexChanged(0));
      },
      child: Container(
        width: 155,
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.16),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              carCategory.icon,
              height: 25,
              color: minorColor,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              carCategory.name,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: minorColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget rentopCarCard({
    required Car car,
    required BuildContext context,
    required Function(Car) onCarTapped,
  }) {
    final controller = CarouselController();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: GestureDetector(
        onTap: () => onCarTapped(car),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(height: 220, viewportFraction: 1),
              items: car.images.map((image) {
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
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: FavoriteButton(
                                valueChanged: (val) {},
                                iconSize: 40,
                                iconDisabledColor: Colors.white,
                                iconColor: mainColor,
                              ),
                            ),
                          ),
                          Align(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () => controller.previousPage(),
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(5),
                                    backgroundColor:
                                        Colors.white, // <-- Button color
                                    foregroundColor:
                                        minorShadeColor, // <-- Splash color
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: minorColor,
                                    size: 20,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () => controller.nextPage(),
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(5),
                                    backgroundColor:
                                        Colors.white, // <-- Button color
                                    foregroundColor:
                                        minorShadeColor, // <-- Splash color
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: minorColor,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  car.name,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                if (car.rating != null && car.rating != 0.0) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: mainColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        car.rating!.toStringAsFixed(2),
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 14, color: mainColor),
                      ),
                    ],
                  )
                ],
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            BlocBuilder<ListingsBloc, ListingsState>(
              builder: (context, state) {
                return GridView.builder(
                  itemCount: car.carSpecifications.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 6,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        car.carSpecifications[index].icon,
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            car.carSpecifications[index].name,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 13, color: minorShadeColor),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: minorShadeColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  car.geoCity,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 13, color: minorShadeColor),
                )
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              "AED ${car.price == car.price.roundToDouble() ? car.price.toStringAsFixed(0) : car.price.toStringAsFixed(2)}",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 15, color: mainColor),
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 1,
              color: minorShadeColor,
            ),
            const SizedBox(
              height: 19,
            ),
          ],
        ),
      ),
    );
  }

  static Widget rentopAppBar({
    required String title,
    required BuildContext context,
    required bool backBtn,
    required Widget? btn,
  }) {
    if (backBtn) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 47,
                height: 47,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Expanded(
              child: Container(
                height: 47,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (btn != null) {
      return Container(
        height: 47,
        margin: const EdgeInsets.symmetric(horizontal: 29),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            btn,
          ],
        ),
      );
    } else {
      return Container(
        height: 47,
        margin: const EdgeInsets.symmetric(horizontal: 29),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
            )
          ],
        ),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      );
    }
  }

  static Widget rentopRatingCard({
    required int totalReviews,
    required double avgRating,
    required double cleanlinessRating,
    required double checkinRating,
    required double locationRating,
    required double communcationRating,
    required double accuracyRating,
    required double valueRating,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "$totalReviews reviews",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 20),
              ),
              const SizedBox(
                width: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: mainColor,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    avgRating.toStringAsFixed(2),
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 17, color: mainColor),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                width: 0.6,
                color: const Color.fromRGBO(0, 0, 0, 0.2),
              ),
            ),
            child: Column(
              children: [
                RentopRating.rentopRatingIndicator(
                  text: "Cleanliness",
                  value: cleanlinessRating,
                  context: context,
                ),
                const SizedBox(
                  height: 10,
                ),
                RentopRating.rentopRatingIndicator(
                  text: "Check-in",
                  value: checkinRating,
                  context: context,
                ),
                const SizedBox(
                  height: 10,
                ),
                RentopRating.rentopRatingIndicator(
                  text: "Location",
                  value: locationRating,
                  context: context,
                ),
                const SizedBox(
                  height: 10,
                ),
                RentopRating.rentopRatingIndicator(
                  text: "Communication",
                  value: communcationRating,
                  context: context,
                ),
                const SizedBox(
                  height: 10,
                ),
                RentopRating.rentopRatingIndicator(
                  text: "Accuracy",
                  value: accuracyRating,
                  context: context,
                ),
                const SizedBox(
                  height: 10,
                ),
                RentopRating.rentopRatingIndicator(
                  text: "Value",
                  value: valueRating,
                  context: context,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  static Widget rentopFavouriteCarCard({
    required String carName,
    required String carPhoto,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(carPhoto),
                radius: 39,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                "Lamborghini Urus",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 13),
              )
            ],
          ),
          Ink(
            decoration: const ShapeDecoration(
              color: Color(0xFFF1F1F1),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  static Widget rentopMessageCard({
    required String carPhoto,
    required String carName,
    required String displayName,
    required int messages,
    required String lastMsg,
    required DateTime lastMsgDate,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(carPhoto),
                radius: 38.5,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    displayName,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontSize: 12, color: mainColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    carName,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    lastMsg,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: mainColor,
                child: Text(
                  messages.toString(),
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                DateFormat.jm().format(lastMsgDate),
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          )
        ],
      ),
    );
  }
}
