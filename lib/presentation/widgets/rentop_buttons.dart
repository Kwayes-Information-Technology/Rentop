import 'dart:math' as math;

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentop/application/repositories/checkout/checkout_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/infrastructure/models/addons.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class RentopButtons {
  static Widget rentopButton({
    required String text,
    required BuildContext context,
    required VoidCallback onBtnPressed,
    required double width,
    required bool isLoading,
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
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(
                text,
                style: Theme.of(context).textTheme.labelLarge,
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
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
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

  static Widget rentopTextButtonWithIcon({
    required VoidCallback onBtnPressed,
    required String btnText,
    required String imagePath,
    required BuildContext context,
  }) {
    return TextButton.icon(
      onPressed: onBtnPressed,
      icon: SvgPicture.asset(imagePath),
      label: Text(
        btnText,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: 14,
              color: mainColor,
            ),
      ),
    );
  }

  static Widget rentopTextButton({
    required String btnText,
    required BuildContext context,
    required VoidCallback onBtnPressed,
    Color? textColor,
  }) {
    return InkWell(
      onTap: onBtnPressed,
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 29),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromRGBO(0, 0, 0, 0.2),
            ),
          ),
        ),
        alignment: Alignment.centerLeft,
        child: Text(
          btnText,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 18,
                color: textColor,
              ),
        ),
      ),
    );
  }

  static Widget rentopFilterDropDownButton({
    required String title,
    required Object? selectedValue,
    required List<dynamic> items,
    required BuildContext context,
    required Function(Object?)? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 16,
        ),
        DropdownButtonFormField2(
          isExpanded: true,
          decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              fillColor: const Color(0xFFF1F1F1),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: mainColor),
                borderRadius: BorderRadius.circular(13),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(
                  width: 0,
                  color: minorShadeColor,
                ),
              )),
          iconSize: 30,
          buttonHeight: 60,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          value: selectedValue,
          hint: Text(
            'Select',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 14,
                  color: minorShadeColor,
                ),
          ),
          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                item.name,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 14),
              ),
            );
          }).toList(),
          onChanged: onChanged,
        )
      ],
    );
  }

  static Widget rentopFilterPriceRange({
    required String title,
    required BuildContext context,
    required Function(String)? fromOnChanged,
    required Function(String)? toOnChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Flexible(
              child: RentopTextFields.rentopPriceTextField(
                context: context,
                hintText: 'From',
                onChanged: fromOnChanged,
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            Flexible(
              child: RentopTextFields.rentopPriceTextField(
                context: context,
                hintText: 'To',
                onChanged: toOnChanged,
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Widget rentopAddonsDropDownButton({
    required List<Addons> addons,
    required List<Addons> selectedAddons,
    required Function(Addons addon) addonChanged,
    required BuildContext context,
  }) {
    return DropdownButtonFormField2(
      isExpanded: true,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          fillColor: const Color(0xFFF1F1F1),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: mainColor),
            borderRadius: BorderRadius.circular(13),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(
              width: 0,
              color: minorShadeColor,
            ),
          )),
      iconSize: 30,
      buttonHeight: 45,
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      hint: Text(
        'Select Services',
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: 14,
              color: minorShadeColor,
            ),
      ),
      items: addons.map((addon) {
        return DropdownMenuItem(
          value: addon,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Checkbox(
                        value: state.addons.contains(addon),
                        onChanged: (value) => addonChanged(addon),
                        activeColor: mainColor,
                      ),
                      Text(
                        addon.fields.name,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 14),
                      ),
                    ],
                  );
                },
              ),
              if (addon.fields.price != null) ...[
                Text(
                  " ${addon.fields.price == addon.fields.price!.roundToDouble() ? addon.fields.price!.toStringAsFixed(0) : addon.fields.price!.toStringAsFixed(2)} AED",
                  softWrap: true,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 14),
                )
              ]
            ],
          ),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }

  static Widget rentopButtonV2({
    required String icon,
    required String btnTxt,
    required VoidCallback onBtnPressed,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: onBtnPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              btnTxt,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14,
                    color: Colors.white,
                  ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  static Widget rentopButtonV3({
    required String icon,
    required String btnTxt,
    required VoidCallback onBtnPressed,
    required BuildContext context,
  }) {
    return Container(
      height: 35,
      width: 142,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF5C5C5C),
            Colors.black,
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
        child: Row(
          children: [
            ImageIcon(
              AssetImage(icon),
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              btnTxt,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }

  static Widget rentopGradientButton({
    required String text,
    required VoidCallback onBtnPressed,
    required BuildContext context,
  }) {
    return Container(
      height: 72,
      margin: const EdgeInsets.symmetric(horizontal: 33),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(162, 41, 242, 0.25),
            offset: Offset(0, 8),
            blurRadius: 16,
          )
        ],
        gradient: LinearGradient(
          transform: const GradientRotation(-180 * (math.pi / 180)),
          begin: const Alignment(1.4, 0.24),
          end: const Alignment(-0.24, 0.073),
          colors: [mainColor, mainShadeColor],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onBtnPressed,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SvgPicture.asset(Assets.forwardArrowIcon),
            ],
          ),
        ),
      ),
    );
  }

  static Widget rentopOutlineButton({
    required String text,
    required VoidCallback onBtnPressed,
    required BuildContext context,
    required Color color,
  }) {
    return SizedBox(
      height: 72,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: color,
            side: BorderSide(color: color),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: onBtnPressed,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: color),
                ),
                SvgPicture.asset(
                  Assets.forwardArrowIcon,
                  color: color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget rentopReturnButton({
    required BuildContext context,
    VoidCallback? backCallback,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
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
        ],
      ),
    );
  }
}
