// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';

class customeText extends StatelessWidget {
  const customeText({
    super.key, required this.text, required this.fontSize,  this.fontWeight, this.textColor,
  });

final String text;
final double fontSize;
final FontWeight? fontWeight;
final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Text(text , style: TextStyle(
      color:textColor ?? AppColors.shadow,
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.normal
    ),);
  }
}