// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customeAuthScreensTitle extends StatelessWidget {
  const customeAuthScreensTitle({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Center(child: customeText(text: "Fruit Market", fontSize: 42 , fontWeight: FontWeight.bold,textColor: AppColors.buttonPrimary,)),
          Center(child: customeText(text: text, fontSize: 28 , fontWeight: FontWeight.bold,textColor: AppColors.black,)),
      ],
    );
  }
}
