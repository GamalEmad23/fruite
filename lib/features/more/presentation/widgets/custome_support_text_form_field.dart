import 'package:flutter/material.dart';

import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customeSupportTextFormField extends StatelessWidget {
  const customeSupportTextFormField({
    super.key,
    required this.text,
    required this.h,
    required this.w,
    required this.controller,
    this.validator,
    this.preText,
  });
  final double h;
  final double w;
  final String text;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? preText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .08),
          child: customeText(
            text: text,
            fontSize: 15,
            textColor: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: h * .015),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .08),
          child: TextFormField(
            maxLines: text == "Message" ? 5 : 1,
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              prefixText: preText ?? "",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.textSecondary),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.textSecondary),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
