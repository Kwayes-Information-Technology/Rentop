import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';

class RentopTextFields {
  static Widget rentopTextField({
    required BuildContext context,
    required Function(String)? onChanged,
    required String hintText,
  }) {
    return SizedBox(
      height: 51,
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(
              width: 0,
              color: minorShadeColor,
            ),
          ),
          focusColor: mainColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(
              color: mainColor,
            ),
          ),
          hintText: hintText,
          hintStyle:
              Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
