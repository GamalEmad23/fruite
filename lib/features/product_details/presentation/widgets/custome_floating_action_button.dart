
import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customeFloatingActionButtton extends StatelessWidget {
  const customeFloatingActionButtton({
    super.key,
    required this.h,
    required this.w, required this.text, this.image, this.minWidth, this.onTap,
  });

  final double h;
  final double w;
  final String text;
  final String? image;
  final double? minWidth;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: h*.06,
        width:minWidth ?? w*.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.buttonPrimary,
        
        ),
        child: Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Image.asset(image ?? "assets/icons/white_image.png" , height: h*.03, color: image == Null ? Colors.transparent : AppColors.white,),
            customeText(text: text, fontSize: 16 , textColor: AppColors.background,)
          ],
        ),
      ),
    );
  }
}
