import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/basket/widgets/custome_stepper.dart';

class CheckOutScreenTime extends StatefulWidget {
  const CheckOutScreenTime({super.key});

  @override
  State<CheckOutScreenTime> createState() => _CheckOutScreenTimeState();
}

class _CheckOutScreenTimeState extends State<CheckOutScreenTime> {
  int activeStep = 0;

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
            ).pushNamedAndRemoveUntil('/', (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      
       body: Column(
         children: [
           CustomeStepper(w: w, activeStep: activeStep),
          
            Divider(),
            
           ///Continue Button 
           customeButton(minWidth: w*.8 , h: h, w: w, onPressed: (){
           Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/checkout_address', (route) => false);
           }, text: customeText(text: "Continue", fontSize: 18 , textColor: AppColors.white, ))
        
         ],
       ),
    );
  } 
}