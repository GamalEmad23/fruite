import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/basket/widgets/custome_payment_option_card.dart';
import 'package:fruit/features/basket/widgets/custome_price_details_row.dart';
import 'package:fruit/features/basket/widgets/custome_stepper.dart';

class CheckOutScreenPayment extends StatefulWidget {
  const CheckOutScreenPayment({super.key});

  @override
  State<CheckOutScreenPayment> createState() => _CheckOutScreenPaymentState();
}

class _CheckOutScreenPaymentState extends State<CheckOutScreenPayment> {
  int activeStep = 2;
  String selectedVal = "payment";

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
            ).pushNamedAndRemoveUntil('/checkout_address', (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            CustomeStepper(w: w, activeStep: activeStep),
        
            Divider(),
        
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: w*.05),
              child: customeText(
                text: "Coupon Code",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textColor: AppColors.black,
              ),
            ),
              SizedBox(height: h * .005),
            
            ///Copone Applay Container
            Center(
              child: Container(
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
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        textColor: AppColors.textSecondary,
                      ),
                      
                      SizedBox(width: w * .02),
                      customeButton(
                        minWidth: w * .1,
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
            ),
            SizedBox(height: h * .005),
            
            ///Total Price Details Container
             customePriceDetailsRow(
                    title: customeText(
                      text: "Total Items",
                      fontSize: 16,
                      textColor: AppColors.textSecondary,
                    ),
                    price: null,
                    kd: '4 Items in cart',
                  ),
            
            ///subtotal price details Container
             customePriceDetailsRow(
                    title: customeText(
                      text: "Subtotal",
                      fontSize: 16,
                      textColor: AppColors.textSecondary,
                    ),
                    price: 36,
                    kd: 'Kd',
                  ),
             
             ///Shipping Charges price details Container
             customePriceDetailsRow(
                    title: customeText(
                      text: "Shipping Charges",
                      fontSize: 16,
                      textColor: AppColors.textSecondary,
                    ),
                    price: 1.5,
                    kd: 'Kd',
                  ),
            
            Divider(
              endIndent: w*.05,
              indent: w*.05,
            ),
        
            /// Bag Total price details Container  
            customePriceDetailsRow(
                    title: customeText(
                      text: "Bag Total",
                      fontSize: 16,
                      textColor: AppColors.success,
                      fontWeight: FontWeight.bold,
                    ),
                    price: 37.5,
                    kd: 'Kd',
                  ),
            
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: w*.05),
              child: customeText(text: "Payment", fontSize: 18 , fontWeight: FontWeight.bold, textColor: AppColors.black,),
            ),
            
            /// Payment method Container
             /// Credit Card
            Center(
              child: CustomePaymentOptionCard(h: h, w: w, title: "Credit Card/Debit card" , value: "credit_card" , groupValue: selectedVal, onChanged: (value) {
                setState(() {
                  selectedVal = value!;
                });
              }, imagePath: 'assets/icons/CreditCard.png',),
            ),
            SizedBox(height: h*.002,),
             
             /// Cash 
             Center(
              child: CustomePaymentOptionCard(h: h, w: w, title: "Cash of Delivery" , value: "Cash" , groupValue: selectedVal, onChanged: (value) {
                setState(() {
                  selectedVal = value!;
                });
              }, imagePath: 'assets/icons/Cash.png',),
            ),
            SizedBox(height: h*.002,),
        
             
             /// Knet
              Center(
              child: CustomePaymentOptionCard(h: h, w: w, title: "Knet" , value: "knet" , groupValue: selectedVal, onChanged: (value) {
                setState(() {
                  selectedVal = value!;
                });
              }, imagePath: 'assets/icons/knet.png',),
              ),
            
            ///Continue Button
            Center(
              child: customeButton(
                minWidth: w * .8,
                h: h,
                w: w,
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushNamedAndRemoveUntil('/success_checkout', (route) => false);
                },
                text: customeText(
                  text: "Place Order",
                  fontSize: 18,
                  textColor: AppColors.white,
                ),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
