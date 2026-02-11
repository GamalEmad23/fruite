// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/basket/widgets/custome_stepper.dart';
import 'package:fruit/features/basket/widgets/date_packer.dart';

class CheckOutScreenTime extends StatefulWidget {
  const CheckOutScreenTime({super.key});

  @override
  State<CheckOutScreenTime> createState() => _CheckOutScreenTimeState();
}

class _CheckOutScreenTimeState extends State<CheckOutScreenTime> {
  int activeStep = 0;
  String selectedVal = "now";

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
            ).pushNamedAndRemoveUntil('/', (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Column(
        children: [
          CustomeStepper(w: w, activeStep: activeStep),

          Divider(),

          ///Now Option
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
                  ///Now radio button
                  customeText(
                    text: "Now",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textColor: AppColors.black,
                  ),
                  
                  ///Now radio button
                  SizedBox(
                    height: h * .06,
                    width: w * .025,
                    child: Radio<String>(
                      value: "now",
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
          ),
           
           SizedBox(height: h*.025,),

           ///Later Option
            Container(
            width: w * .9,
            height: h * .2,
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

            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: w * .08),
                  child: Row(
                    crossAxisAlignment: .center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customeText(
                        text: "Select Delivery Time",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textColor: AppColors.black,
                      ),
                
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
                 Padding(
                   padding: EdgeInsetsGeometry.symmetric(horizontal: w*.08, vertical: h*.01),
                   child: DatePickerField(),
                 ), 
              ],
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
              ).pushNamedAndRemoveUntil('/checkout_address', (route) => false);
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


