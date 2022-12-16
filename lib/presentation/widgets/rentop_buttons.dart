import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';

class RentopButtons {
  static Widget rentopButton({
    required String text,
    required BuildContext context,
    required VoidCallback onBtnPressed,
  }) {
    return Container(
      height: 60,
      width: 224,
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
}
