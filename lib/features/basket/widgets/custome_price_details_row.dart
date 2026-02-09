
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customePriceDetailsRow extends StatelessWidget {
  const customePriceDetailsRow({
    super.key,
    required this.title,
    required this.price,
    required this.kd,
  });

  final Widget title;
  final double price;
  final String kd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          title,
          Row(
            children: [
              customeText(
                text: price.toString(),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textColor: AppColors.buttonPrimary,
              ),
              SizedBox(width: 3),
              customeText(
                text: kd,
                fontSize: 14,
                textColor: AppColors.textSecondary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
