import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_type.dart';
import 'package:rentop/infrastructure/style/colors.dart';

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

  static Widget rentopCarBrand({
    required CarBrand carBrand,
    required BuildContext context,
    required int index,
  }) {
    return Padding(
      padding: index.isEven
          ? const EdgeInsets.symmetric(horizontal: 30)
          : EdgeInsets.zero,
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
            child: Image.network(carBrand.brandUrl),
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            carBrand.brand,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: mainColor,
                ),
          ),
        ],
      ),
    );
  }

  static Widget rentopCarType({
    required CarType carType,
    required BuildContext context,
    required int index,
    required int selectedCarTypeIndex,
  }) {
    return Container(
      width: 155,
      margin: const EdgeInsets.only(
        right: 15,
        bottom: 5,
        top: 5,
      ),
      decoration: selectedCarTypeIndex == index
          ? BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  mainColor,
                  mainShadeColor,
                ],
              ),
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  blurRadius: 5,
                ),
              ],
            )
          : BoxDecoration(
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
          Image.network(
            carType.icon,
            height: 25,
            color: selectedCarTypeIndex == index ? Colors.white : minorColor,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            carType.title,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color:
                      selectedCarTypeIndex == index ? Colors.white : minorColor,
                ),
          ),
        ],
      ),
    );
  }

  static Widget rentopCarCard({
    required Car car,
    required BuildContext context,
  }) {
    final controller = CarouselController();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
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

                              // RawMaterialButton(
                              //   onPressed: () => controller.previousPage(),
                              //   fillColor: Colors.white,
                              //   padding: const EdgeInsets.all(5),
                              //   shape: const CircleBorder(),
                              //   child: const Icon(
                              //     Icons.arrow_back_ios_new,
                              //   ),
                              // ),
                              // RawMaterialButton(
                              //   onPressed: () => controller.nextPage(),
                              //   fillColor: Colors.white,
                              //   padding: const EdgeInsets.all(5),
                              //   shape: const CircleBorder(),
                              //   child: const Icon(
                              //     Icons.arrow_forward_ios,
                              //   ),
                              // )
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
              if (car.rating != null) ...[
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
                      car.rating.toString(),
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
          GridView.builder(
            itemCount: car.carSpecifications.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 6,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Image.network(
                    car.carSpecifications[index].icon,
                    height: 21,
                    width: 21,
                    color: minorShadeColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    car.carSpecifications[index].name,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 13, color: minorShadeColor),
                  )
                ],
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
                car.location,
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
            "AED ${car.price}",
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
        ],
      ),
    );
  }

  static Widget rentopAppBar({
    required String title,
    required BuildContext context,
  }) {
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
