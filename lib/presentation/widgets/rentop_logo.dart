import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentop/infrastructure/core/assets.dart';

Widget rentopLogo({
  required BuildContext context,
}) {
  return SvgPicture.asset(
    Assets.fullLogo,
    width: MediaQuery.of(context).size.width / 1.5,
  );
}
