import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentop/infrastructure/core/assets.dart';
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
}
