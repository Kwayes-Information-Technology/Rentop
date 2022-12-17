import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentop/infrastructure/style/colors.dart';

class RentopButtons {
  static Widget rentopButton({
    required String text,
    required BuildContext context,
    required VoidCallback onBtnPressed,
    required double width,
  }) {
    return Container(
      height: 60,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: LinearGradient(
          colors: [
            mainColor,
            mainShadeColor,
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: onBtnPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  static Widget rentopCardButton({
    required String text,
    required BuildContext context,
    required VoidCallback onBtnPressed,
    required String imagePath,
  }) {
    return InkWell(
      onTap: onBtnPressed,
      child: Container(
        height: 169,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: minorColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              height: 56,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: mainColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
