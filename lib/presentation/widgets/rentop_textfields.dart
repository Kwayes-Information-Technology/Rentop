import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';

class RentopTextFields {
  static Widget rentopTextField({
    required BuildContext context,
    required Function(String)? onChanged,
    required String hintText,
    required String? onVaildator,
    required Widget? suffixIcon,
    required bool obsecureText,
    required TextEditingController? controller,
  }) {
    return SizedBox(
      height: 51,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        validator: (_) => onVaildator,
        obscureText: obsecureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: const Color(0xFFF1F1F1),
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
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(
              color: Color(0xFFFF3131),
            ),
          ),
          errorStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 12,
                color: const Color(0xFFFF3131),
              ),
          labelText: hintText,
          labelStyle:
              Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16),
        ),
      ),
    );
  }

  static Widget rentopPriceTextField({
    required BuildContext context,
    required Function(String)? onChanged,
    required String hintText,
  }) {
    return SizedBox(
      height: 41,
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: TextInputType.number,
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
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(
              color: Color(0xFFFF3131),
            ),
          ),
          errorStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 12,
                color: const Color(0xFFFF3131),
              ),
          labelText: hintText,
          prefixText: "AED ",
          labelStyle: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontSize: 14, color: minorShadeColor),
          prefixStyle: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontSize: 14, color: minorColor),
        ),
      ),
    );
  }
}
