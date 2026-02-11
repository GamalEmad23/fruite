// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class SuccessCheckOutScreen extends StatelessWidget {
  const SuccessCheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.background,
       appBar: AppBar(
        backgroundColor: AppColors.background,
        title: customeText(
          text: "Checkout",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          textColor: AppColors.buttonPrimary,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/checkout_payment', (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
       
       body: Column(
        children: [
          /// Success SVG
          Center(child: SvgPicture.asset("assets/svgs/success.svg")),
          SizedBox(height: h*.045,),

          customeText(text: "YOUR ORDER IS CONFIRMED!", fontSize: 22 , fontWeight: FontWeight.bold, textColor: AppColors.success,),
          SizedBox(height: h*.015,),

          customeText(text: "Your order code: #243188", fontSize: 18 , fontWeight: FontWeight.w500, textColor: AppColors.textHint,),
          customeText(text: "Thank you for choosing our products!", fontSize: 17 , fontWeight: FontWeight.w500, textColor: AppColors.textHint,),
          SizedBox(height: h*.045,),


          customeButton(h: h, w: w, onPressed: (){}, text: customeText(text: "Continue Shopping", fontSize: 18 , textColor: AppColors.white,) , minWidth: w*.8, bottonPading: w*.025,),
          customeButton(h: h, w: w, onPressed: (){}, text: customeText(text: " Track Order", fontSize: 18 , textColor: AppColors.buttonPrimary,) , minWidth: w*.8,  color: AppColors.white, Boardercolor: AppColors.primaryDark, ),
        ],
       ),
    );
  }
}
