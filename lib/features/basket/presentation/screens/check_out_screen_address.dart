// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/basket/widgets/custome_stepper.dart';

class CheckOutScreenAddress extends StatefulWidget {
  const CheckOutScreenAddress({super.key});

  @override
  State<CheckOutScreenAddress> createState() => _CheckOutScreenAddressState();
}

class _CheckOutScreenAddressState extends State<CheckOutScreenAddress> {
  int activeStep = 1;
  String selectedVal = "another";
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
            ).pushNamedAndRemoveUntil('/checkout_time', (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Column(
        children: [
          CustomeStepper(w: w, activeStep: activeStep),

          Divider(),

          /// Add New Address Container
          Container(
            width: w * .9,
            height: h * .07,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: const Offset(0, 8),
                ),
              ],
            ),

            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: w * .08),
              child: Row(
                crossAxisAlignment: .center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Add New Address Button
                  customeText(
                    text: "Add New Address",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textColor: AppColors.textSecondary,
                  ),

                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ],
              ),
            ),
          ),

          SizedBox(height: h * .025),

          Container(
            width: w * .9,
            height: h * .3,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: const Offset(0, 8),
                ),
              ],
            ),

            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: w * .04),
              child: Column(
                mainAxisAlignment: .start,
                crossAxisAlignment: .start,
                
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: w * .01),
                    child: Row(
                      crossAxisAlignment: .center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                               "assets/icons/location.png",
                               height: h*.025,
                            ),
                            SizedBox(width: w*.025,),
                            customeText(
                              text: "Address 1",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              textColor: AppColors.textSecondary,
                            ),
                          ],
                        ),
                        /// Radio Button
                        SizedBox(
                          height: h * .06,
                          width: w * .025,
                          child: Radio<String>(
                            value: "later",
                            groupValue: selectedVal,
                            onChanged: (value) {
                              setState(() {
                                selectedVal = value!;
                              });
                            },
                            activeColor: AppColors.primary,
                          ),
                        ),  
                      ],
                    ),
                  ),
              
              
                  customeText(text: "John Doe", fontSize: 16 , textColor: AppColors.textSecondary,),
                  customeText(text: "+000-11-1234567", fontSize: 16 , textColor: AppColors.textSecondary,),
                  SizedBox(height: h*.025,),
              
                  customeText(text: "Room # 1 - Ground Floor, Al Najoum Building, 24 B ", fontSize: 14 , textColor: AppColors.textSecondary,),
                  customeText(text: "Street, Dubai - United Arab Emirates ", fontSize: 16 , textColor: AppColors.textSecondary,),
              
                  
                ],
              ),
            ),
          ),
            
                
             Expanded(child: SizedBox()), 

          ///Continue Button
          customeButton(
            minWidth: w * .8,
            h: h,
            w: w,
            onPressed: () {
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil('/checkout_payment', (route) => false);
            },
            text: customeText(
              text: "Continue",
              fontSize: 18,
              textColor: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
