import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/basket/widgets/custome_stepper.dart';

class CheckOutScreenPayment extends StatefulWidget {
  const CheckOutScreenPayment({super.key});

  @override
  State<CheckOutScreenPayment> createState() => _CheckOutScreenPaymentState();
}

class _CheckOutScreenPaymentState extends State<CheckOutScreenPayment> {
  int activeStep = 2;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/checkout_address', (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Column(
        children: [
          CustomeStepper(w: w, activeStep: activeStep),

          Divider(),

          customeText(
            text: "Coupon Code",
            fontSize: 18,
            fontWeight: FontWeight.bold,
            textColor: AppColors.black,
          ),
          SizedBox(height: h * .01),

          Container(
            width: w * .96,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Add New Address Button
                  customeText(
                    text: "Do You Have any Coupon Code?",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    textColor: AppColors.textSecondary,
                  ),
                  
                  SizedBox(width: w * .02),
                  customeButton(
                    minWidth: w * .19,
                    h: h * .06,
                    w: w,
                    hight: h * .04,
                    onPressed: () {},
                    text: customeText(text: "Apply", fontSize: 16 , textColor: AppColors.white),
                  ),
                ],
              ),
            ),
          ),

          ///Continue Button
          customeButton(
            minWidth: w * .8,
            h: h,
            w: w,
            onPressed: () {
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil('', (route) => false);
            },
            text: customeText(
              text: "Continue",
              fontSize: 18,
              textColor: AppColors.white,
            ),
          ),
          /* customePriceDetailsRow(
                  title: customeText(
                    text: "Subtotal",
                    fontSize: 16,
                    textColor: AppColors.textSecondary,
                  ),
                  price: 36,
                  kd: 'Kd',
                ),*/
        ],
      ),
    );
  }
}
