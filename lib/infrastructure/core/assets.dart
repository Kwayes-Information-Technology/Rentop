import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:rentop/infrastructure/style/colors.dart';

class Assets {
  static const String logo = "assets/images/logo/logo.png";
  static const String fullLogo = "assets/images/logo/full_logo.svg";
  static const String customerVector = "assets/images/icons/customer.svg";
  static const String businessVector = "assets/images/icons/business.svg";
  static const String googleVector = "assets/images/icons/google.svg";
  static const String carEclipse = "assets/images/images/car_eclipse.png";
  static const String lockVector = "assets/images/icons/lock.svg";
  static const String errorIcon = 'assets/images/icons/error.png';
  static const String homeIcon = 'assets/images/icons/home.png';
  static const String chatIcon = 'assets/images/icons/chat_bubble.png';
  static const String favoriteIcon = 'assets/images/icons/favorite.png';
  static const String menuIcon = 'assets/images/icons/menu.png';
  static const String searchIcon = 'assets/images/icons/search.png';
  static const String notificationInactive =
      'assets/images/icons/notifications_inactive.svg';
  static const String notificationActive =
      'assets/images/icons/notifications_active.svg';
  static const String filterIcon = 'assets/images/icons/tune.png';
  static const String clearIcon = 'assets/images/icons/restart_alt.svg';

  static Widget getImageFromString(String metaValue) {
    if (metaValue.contains('icon-auto')) {
      final String icon = metaValue.replaceAll("icon-auto icon-auto", "");
      final String iconPath = "assets/images/icons/auto/$icon.png";
      return Image.asset(
        iconPath,
        height: 21,
        width: 21,
        color: minorShadeColor,
      );
    } else if (metaValue.contains('fas')) {
      return FaIcon(
        getIconFromCss(metaValue),
        size: 21,
        color: minorShadeColor,
      );
    } else {
      return FaIcon(
        FontAwesomeIcons.alignJustify,
        size: 21,
        color: minorShadeColor,
      );
    }
  }
}
