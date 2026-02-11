import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';

import '../../../../core/widgets/custome_text.dart';

class ObsCheckOutScreen extends StatefulWidget {
  const ObsCheckOutScreen({super.key});

  @override
  State<ObsCheckOutScreen> createState() => _ObsCheckOutScreenState();
}

class _ObsCheckOutScreenState extends State<ObsCheckOutScreen> {
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

          SizedBox(height: h*.15,),
          /// Success SVG
          Center(child: SvgPicture.asset("assets/svgs/obs.svg")),
          SizedBox(height: h*.045,),

          customeText(text: "OPS", fontSize: 22 , fontWeight: FontWeight.bold, textColor: AppColors.error,),
          SizedBox(height: h*.015,),

          customeText(text: "Error while confirming your payment/order", fontSize: 16 , fontWeight: FontWeight.w500, textColor: AppColors.textHint,),
          SizedBox(height: h*.045,),


          customeButton(h: h, w: w, onPressed: (){
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/checkout_payment', (route) => false);
          }, text: customeText(text: "Back", fontSize: 18 , textColor: AppColors.white,) , minWidth: w*.8,  color: AppColors.error, ),
        ],
       ),
    );
  }
}