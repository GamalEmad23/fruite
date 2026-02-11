
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customeButton extends StatelessWidget {
  const customeButton({
    super.key,
    required this.h,
    required this.w,
    required this.onPressed,
    this.color,
    this.radius,
    this.minWidth,
    required this.text, this.bottonPading, this.hight, this.Boardercolor,
  });

  final double h;
  final double w;
  final double? hight;
  final void Function()? onPressed;
  final Color? color;
  final Color? Boardercolor;
  final double? radius;
  final double? minWidth;
  final customeText text;
  final double? bottonPading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:bottonPading ?? h * .1),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Boardercolor ?? Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadiusGeometry.circular(radius ?? 20),
        ),
        minWidth: minWidth ?? w * .4,
        height: hight ??  h * .06,
        color: color ?? AppColors.buttonPrimary,
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}
