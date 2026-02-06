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
            ).pushNamedAndRemoveUntil('/checkout_time', (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      
       body: Column(
         children: [
           
           CustomeStepper(w: w, activeStep: activeStep),
           
           ///Continue Button 
           customeButton(minWidth: w*.8 , h: h, w: w, onPressed: (){
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/checkout_payment', (route) => false);
           }, text: customeText(text: "Continue", fontSize: 18 , textColor: AppColors.white, ))
        
         ],
       ),
    );
  }
}




