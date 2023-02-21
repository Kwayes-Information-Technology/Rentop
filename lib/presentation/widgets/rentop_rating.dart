import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';

class RentopRating {
  static Widget rentopRatingIndicator({
    required String text,
    required double value,
    required BuildContext context,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: value / 5,
                  valueColor: AlwaysStoppedAnimation<Color>(mainColor),
                  backgroundColor: const Color(0xffD6D6D6),
                ),
              ),
            ),
            const SizedBox(
              width: 9,
            ),
            Text(
              value.toString(),
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ],
    );
  }
}
