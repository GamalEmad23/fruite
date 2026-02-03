
import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customeAuthCard extends StatelessWidget {
  const customeAuthCard({
    super.key,
    required this.h,
    required this.w, required this.image, required this.text, required this.background, required this.textColor,
  });

  final double h;
  final double w;
  final String image;
  final String text;
  final Color background;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h*.06,
      width: w*0.9,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: AppColors.iconSecondary , blurRadius: 1.5 , blurStyle: BlurStyle.normal)
        ]
      ),
      child: Row(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Image.asset(image , height: h*.025,),
          SizedBox(width: w*.04,),
          customeText(text: text, fontSize: 16 , textColor: textColor, fontWeight: FontWeight.normal,)
        ],
      ),
    );
  }
}