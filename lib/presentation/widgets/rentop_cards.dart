import 'package:another_flushbar/flushbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/navigation/navigation_bloc.dart';
import 'package:rentop/application/repositories/accountDetails/account_details_bloc.dart';
import 'package:rentop/application/repositories/billingAddress/billing_address_bloc.dart';
import 'package:rentop/application/repositories/cars/cars_bloc.dart';
import 'package:rentop/application/repositories/entryCheckout/entry_checkout_bloc.dart';
import 'package:rentop/application/repositories/favourites/favourites_bloc.dart';
import 'package:rentop/application/repositories/listings/listings_bloc.dart';
import 'package:rentop/application/repositories/messages/messages_bloc.dart';
import 'package:rentop/application/repositories/shippingAddress/shipping_address_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/models/billing.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/car_brand.dart';
import 'package:rentop/infrastructure/models/car_category.dart';
import 'package:rentop/infrastructure/models/conversation.dart';
import 'package:rentop/infrastructure/models/entry.dart';
import 'package:rentop/infrastructure/models/message.dart';
import 'package:rentop/infrastructure/models/shipping.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_rating.dart';

class RentopCards {
  static Widget rentopProfileCard({
    required String? userPhoto,
    required String userGravatar,
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
              CachedNetworkImage(
                placeholder: (context, url) => Center(
                  child: Image.asset(
                    Assets.imagePlaceholder,
                  ),
                ),
                errorWidget: (context, url, error) => const Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),
                imageUrl: userPhoto ?? userGravatar,
                imageBuilder: (context, imageProvider) {
                  return CircleAvatar(
                    backgroundImage: imageProvider,
                  );
                },
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                "Hi, $userName",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
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
    required String? userPhoto,
    required String userGravatar,
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
          CachedNetworkImage(
            placeholder: (context, url) => Center(
              child: Image.asset(
                Assets.imagePlaceholder,
              ),
            ),
            errorWidget: (context, url, error) => const Center(
              child: Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),
            imageUrl: userPhoto ?? userGravatar,
            imageBuilder: (context, imageProvider) {
              return CircleAvatar(
                backgroundImage: imageProvider,
              );
            },
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
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 18,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  '/myProfile',
                ),
                child: Text(
                  "Show Profile",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: mainShadeColor),
                ),
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
    required VoidCallback btnPressed,
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
              CachedNetworkImage(
                placeholder: (context, url) => Center(
                  child: Image.asset(
                    Assets.imagePlaceholder,
                  ),
                ),
                errorWidget: (context, url, error) => const Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),
                imageUrl: userPhoto,
                imageBuilder: (context, imageProvider) {
                  return CircleAvatar(
                    backgroundImage: imageProvider,
                  );
                },
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                userName,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
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
            onPressed: btnPressed,
          )
        ],
      ),
    );
  }

  static Widget rentopProfileCardV4({
    required String? userPhoto,
    required String userGravatar,
    required String userName,
    required BuildContext context,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.black,
      ),
      child: Column(
        children: [
          CachedNetworkImage(
            placeholder: (context, url) => Center(
              child: Image.asset(
                Assets.imagePlaceholder,
              ),
            ),
            errorWidget: (context, url, error) => const Center(
              child: Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),
            imageUrl: userPhoto ?? userGravatar,
            imageBuilder: (context, imageProvider) {
              return CircleAvatar(
                backgroundImage: imageProvider,
              );
            },
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Hello",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            userName,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 41,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              gradient: const LinearGradient(
                colors: [
                  Colors.black,
                  Color(0xFF5C5C5C),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  offset: const Offset(0, -4),
                  blurRadius: 56,
                )
              ],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              onPressed: () {
                final authState = context.read<AuthBloc>().state;
                if (authState is Authenticated) {
                  context.read<AccountDetailsBloc>().add(
                      AccountDetailsEvent.initialAccountDetails(
                          authState.profile));
                  Navigator.pushNamed(
                    context,
                    '/AccountDetails',
                  );
                } else {
                  Flushbar(
                    margin: const EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(8),
                    message:
                        "You're not registered user. You have to be registered user in order to use this feature!",
                  ).show(context);
                }
              },
              child: Text(
                "Edit account details",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }

  static Widget rentopGuestUserCard({
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
                  backgroundColor: mainColor,
                  child: const ImageIcon(
                    AssetImage(Assets.userIcon),
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 15,
              ),
              Text(
                "Guest User",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 18,
                    ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/Welcome'),
            child: SvgPicture.asset(
              Assets.forwardArrowIcon,
              color: mainColor,
            ),
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
        child: Container(
          height: 75,
          width: 75,
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
              height: 40,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              carCategory.name,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
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
    final favourites = context.read<FavouritesBloc>().state.favourites;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: GestureDetector(
        onTap: () => onCarTapped(car),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              carouselController: controller,
              itemCount: car.images.length,
              itemBuilder: (context, index, realIndex) {
                return CachedNetworkImage(
                  placeholder: (context, url) => Center(
                    child: Image.asset(
                      Assets.imagePlaceholder,
                    ),
                  ),
                  imageUrl: car.images[index],
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(
                          image: imageProvider,
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
                                isFavorite: favourites
                                    .any((element) => element.id == car.id),
                                valueChanged: (val) {
                                  final authState =
                                      context.read<AuthBloc>().state;
                                  if (authState is Authenticated) {
                                    if (val == true) {
                                      context.read<FavouritesBloc>().add(
                                          FavouritesEvent.addFavourite(
                                              car.id.toString()));
                                    } else {
                                      context.read<FavouritesBloc>().add(
                                          FavouritesEvent.removeFavourite(
                                              car.id.toString()));
                                    }
                                  } else {
                                    Navigator.pushNamed(context, '/Welcome');
                                  }
                                },
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
                  errorWidget: (context, url, error) => const Center(
                    child: Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                  ),
                );
              },
              options: CarouselOptions(viewportFraction: 1),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    car.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: "Poppins",
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
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
                            .displayLarge!
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
                    childAspectRatio: 4,
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
                                .displayLarge!
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
                      .displayLarge!
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
                  .displayLarge!
                  .copyWith(fontSize: 15, color: mainColor),
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
    VoidCallback? backCallback,
  }) {
    if (backBtn) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                if (backCallback != null) {
                  backCallback();
                }
                Navigator.pop(context);
              },
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
                      style: Theme.of(context).textTheme.bodyLarge,
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
              style: Theme.of(context).textTheme.bodyLarge,
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
              style: Theme.of(context).textTheme.bodyLarge,
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
                    .displayLarge!
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
                        .displayLarge!
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
    required VoidCallback onTapped,
    required VoidCallback onRemoveTapped,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 5),
      child: GestureDetector(
        onTap: onTapped,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CachedNetworkImage(
                    placeholder: (context, url) => Center(
                      child: Image.asset(
                        Assets.imagePlaceholder,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    ),
                    imageUrl: carPhoto,
                    imageBuilder: (context, imageProvider) {
                      return CircleAvatar(
                        backgroundImage: imageProvider,
                        radius: 39,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: Text(
                      carName,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Ink(
              decoration: const ShapeDecoration(
                color: Color(0xFFF1F1F1),
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: onRemoveTapped,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget rentopMessageCard({
    required Conversation conversation,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        context
            .read<MessagesBloc>()
            .add(MessagesEvent.selectedConversationChanged(conversation));
        Navigator.pushNamed(
          context,
          '/Message',
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CachedNetworkImage(
                    placeholder: (context, url) => Center(
                      child: Image.asset(
                        Assets.imagePlaceholder,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    ),
                    imageUrl: conversation.car.images.first,
                    imageBuilder: (context, imageProvider) {
                      return CircleAvatar(
                        backgroundImage: imageProvider,
                        radius: 38.5,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (conversation.messages.isNotEmpty) ...[
                          Text(
                            conversation.messages.last.sendByMe
                                ? "${conversation.sender.firstName} ${conversation.sender.lastName}"
                                : "${conversation.receiver.firstName} ${conversation.receiver.lastName}",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontSize: 12, color: mainColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                        Text(
                          conversation.car.name,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 13),
                        ),
                        if (conversation.messages.isNotEmpty) ...[
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            conversation.messages.last.text,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontSize: 10),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (conversation.unseenMessages > 0) ...[
                  CircleAvatar(
                    radius: 9.5,
                    backgroundColor: mainColor,
                    child: Text(
                      conversation.unseenMessages.toString(),
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
                if (conversation.messages.isNotEmpty) ...[
                  Text(
                    conversation.messages.last.createdAt
                                .difference(DateTime.now())
                                .inDays ==
                            0
                        ? "Today"
                        : conversation.messages.last.createdAt
                                    .difference(DateTime.now())
                                    .inDays ==
                                -1
                            ? "Yesterday"
                            : DateFormat.yMd()
                                .format(conversation.messages.last.createdAt),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    DateFormat.jm()
                        .format(conversation.messages.last.createdAt),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ],
            )
          ],
        ),
      ),
    );
  }

  static Widget rentopEntryCard({
    required Entry entry,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        '/OrderDetails',
        arguments: entry,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 19,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 29,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (entry.car.images.isNotEmpty) ...[
                  CachedNetworkImage(
                    placeholder: (context, url) => Center(
                      child: Image.asset(
                        Assets.imagePlaceholder,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    ),
                    imageUrl: entry.car.images.first,
                    imageBuilder: (context, imageProvider) {
                      return CircleAvatar(
                        backgroundImage: imageProvider,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
                Text(
                  entry.car.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 0.5,
              color: Colors.black.withOpacity(0.2),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: entry.status == 'declined'
                    ? mainShadeColor.withOpacity(0.15)
                    : entry.status == 'pending'
                        ? Colors.amber.withOpacity(0.2)
                        : entry.status == 'publish'
                            ? Colors.greenAccent.withOpacity(0.3)
                            : const Color.fromRGBO(0, 0, 0, 0.15),
                borderRadius: BorderRadius.circular(
                  13,
                ),
              ),
              child: Text(
                entry.status == 'declined'
                    ? "Declined"
                    : entry.status == 'pending'
                        ? "Pending"
                        : entry.status == 'pending_payment'
                            ? "Pending Payment"
                            : entry.status == 'publish'
                                ? 'Active'
                                : entry.status,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 13,
                      color: entry.status == 'declined'
                          ? mainShadeColor
                          : entry.status == 'pending'
                              ? Colors.orange
                              : entry.status == 'publish'
                                  ? Colors.green
                                  : const Color.fromRGBO(0, 0, 0, 0.4),
                    ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Type",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "Daily Reservation",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Created",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  DateFormat("dd MMMM yyyy").format(entry.date),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Checkin",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  DateFormat("dd MMMM yyyy").format(entry.checkin),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Checkout",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  DateFormat("dd MMMM yyyy").format(entry.checkout),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            if (entry.status == 'pending_payment') ...[
              const SizedBox(
                height: 15,
              ),
              Divider(
                height: 0.5,
                color: Colors.black.withOpacity(0.2),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: RentopButtons.rentopButtonV3(
                  btnTxt: "Pay Now",
                  context: context,
                  onBtnPressed: () {
                    context
                        .read<EntryCheckoutBloc>()
                        .add(EntryCheckoutEvent.selectedEntryChanged(entry));
                    Navigator.pushNamed(
                      context,
                      '/OrderCheckout',
                      arguments: entry,
                    );
                  },
                  icon: Assets.payIcon,
                ),
              )
            ],
          ],
        ),
      ),
    );
  }

  static Widget rentopMessageHeaderCard({
    required String carPhoto,
    required String carName,
    required BuildContext context,
    required VoidCallback backBtn,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              backBtn();
            },
            child: Container(
              width: 47,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.16),
                    offset: Offset(0, -4),
                    blurRadius: 15,
                  )
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
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 11),
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
                  CachedNetworkImage(
                    placeholder: (context, url) => Center(
                      child: Image.asset(
                        Assets.imagePlaceholder,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    ),
                    imageUrl: carPhoto,
                    imageBuilder: (context, imageProvider) {
                      return CircleAvatar(backgroundImage: imageProvider);
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: Text(
                      carName,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 18,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget rentopMessageTile({
    required Message message,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 6),
      child: Align(
        alignment:
            message.sendByMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: message.sendByMe
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat.jm().format(message.createdAt),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 10,
                    color: minorColor,
                  ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: message.sendByMe ? null : Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
                gradient: message.sendByMe
                    ? LinearGradient(
                        colors: [
                          mainColor,
                          mainShadeColor,
                        ],
                      )
                    : null,
              ),
              child: Text(
                message.text,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: message.sendByMe ? Colors.white : minorColor,
                      fontSize: 16,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget rentopBillingAddressCard({
    required Billing? billingInfo,
    required BuildContext context,
  }) {
    if (billingInfo == null ||
        (billingInfo.address1!.isEmpty &&
            billingInfo.firstName!.isEmpty &&
            billingInfo.lastName!.isEmpty &&
            billingInfo.country!.isEmpty &&
            billingInfo.email!.isEmpty &&
            billingInfo.phone!.isEmpty)) {
      return Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 29),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Billing Address",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "You have not set up this type of address yet",
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 12,
            ),
            RentopButtons.rentopButton(
              text: "Add",
              context: context,
              onBtnPressed: () => Navigator.pushNamed(
                context,
                '/BillingAddress',
              ),
              isLoading: false,
              width: double.infinity,
            )
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 29),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Billing Address",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            if (billingInfo.firstName != null &&
                billingInfo.firstName!.isNotEmpty) ...[
              Text(
                "${billingInfo.firstName} ${billingInfo.lastName}",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.company != null &&
                billingInfo.company!.isNotEmpty) ...[
              Text(
                billingInfo.company!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.address1 != null &&
                billingInfo.address1!.isNotEmpty) ...[
              Text(
                billingInfo.address1!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.address2 != null &&
                billingInfo.address2!.isNotEmpty) ...[
              Text(
                billingInfo.address2!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.postcode != null &&
                billingInfo.postcode!.isNotEmpty) ...[
              Text(
                billingInfo.postcode!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.city != null && billingInfo.city!.isNotEmpty) ...[
              Text(
                billingInfo.city!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.state != null && billingInfo.state!.isNotEmpty) ...[
              Text(
                billingInfo.state!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.country != null &&
                billingInfo.country!.isNotEmpty) ...[
              Text(
                billingInfo.country!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.email != null && billingInfo.email!.isNotEmpty) ...[
              Text(
                billingInfo.email!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (billingInfo.phone != null && billingInfo.phone!.isNotEmpty) ...[
              Text(
                billingInfo.phone!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            const SizedBox(
              height: 12,
            ),
            RentopButtons.rentopButton(
              text: "Edit",
              context: context,
              onBtnPressed: () {
                context.read<BillingAddressBloc>().add(
                    BillingAddressEvent.initialBillingAddress(billingInfo));
                Navigator.pushNamed(
                  context,
                  '/BillingAddress',
                );
              },
              isLoading: false,
              width: double.infinity,
            )
          ],
        ),
      );
    }
  }

  static Widget rentopShippingAddressCard({
    required Shipping? shippingInfo,
    required BuildContext context,
  }) {
    if (shippingInfo == null ||
        (shippingInfo.address1!.isEmpty &&
            shippingInfo.firstName!.isEmpty &&
            shippingInfo.lastName!.isEmpty &&
            shippingInfo.country!.isEmpty)) {
      return Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 29),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shipping Address",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "You have not set up this type of address yet",
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 12,
            ),
            RentopButtons.rentopButton(
              text: "Add",
              context: context,
              onBtnPressed: () => Navigator.pushNamed(
                context,
                '/ShippingAddress',
              ),
              isLoading: false,
              width: double.infinity,
            )
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 29),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shipping Address",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            if (shippingInfo.firstName != null &&
                shippingInfo.firstName!.isNotEmpty) ...[
              Text(
                "${shippingInfo.firstName} ${shippingInfo.lastName}",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (shippingInfo.company != null &&
                shippingInfo.company!.isNotEmpty) ...[
              Text(
                shippingInfo.company!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (shippingInfo.address1 != null &&
                shippingInfo.address1!.isNotEmpty) ...[
              Text(
                shippingInfo.address1!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (shippingInfo.address2 != null &&
                shippingInfo.address2!.isNotEmpty) ...[
              Text(
                shippingInfo.address2!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (shippingInfo.postcode != null &&
                shippingInfo.postcode!.isNotEmpty) ...[
              Text(
                shippingInfo.postcode!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (shippingInfo.city != null && shippingInfo.city!.isNotEmpty) ...[
              Text(
                shippingInfo.city!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (shippingInfo.state != null &&
                shippingInfo.state!.isNotEmpty) ...[
              Text(
                shippingInfo.state!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            if (shippingInfo.country != null &&
                shippingInfo.country!.isNotEmpty) ...[
              Text(
                shippingInfo.country!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
            const SizedBox(
              height: 12,
            ),
            RentopButtons.rentopButton(
              text: "Edit",
              context: context,
              onBtnPressed: () {
                context.read<ShippingAddressBloc>().add(
                    ShippingAddressEvent.initialShippingAddress(shippingInfo));
                Navigator.pushNamed(
                  context,
                  '/ShippingAddress',
                );
              },
              isLoading: false,
              width: double.infinity,
            )
          ],
        ),
      );
    }
  }

  static Widget rentopSendMessageCard({
    required VoidCallback btnPressed,
    required BuildContext context,
  }) {
    return Container(
      height: 79,
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
          Text(
            "Send Message",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 18,
                ),
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              color: mainColor,
            ),
            onPressed: btnPressed,
          )
        ],
      ),
    );
  }
}
