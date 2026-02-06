// ignore_for_file: unused_local_variable

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class GeneralCheckScreen extends StatefulWidget {
  const GeneralCheckScreen({super.key});

  @override
  State<GeneralCheckScreen> createState() => _GeneralCheckScreenState();
}

class _GeneralCheckScreenState extends State<GeneralCheckScreen> {
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
            Navigator.of(context).pushNamed("/basket");
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
       body: Column(
         children: [
           EasyStepper( 
        showScrollbar: true,
        activeStep: activeStep,
        activeStepTextColor: Colors.black87,
        finishedStepTextColor: Colors.black87,
        internalPadding: w*.1 ,
        showLoadingAnimation: false,
        activeStepBackgroundColor: AppColors.iconPrimary,
        finishedStepBackgroundColor: AppColors.textDisabled,
        stepRadius: 10,
        showStepBorder: true,
        steps: [
          EasyStep(
            customStep: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 7,
                backgroundColor:
                    activeStep == 0 ? AppColors.inputFocusedBorder : AppColors.buttonDisabled,
              ),
            ),
            title: 'Delivery Time',
          ),
          
          
          EasyStep(
            customStep: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 7,
                backgroundColor:
                    activeStep ==1 ? AppColors.inputFocusedBorder : AppColors.buttonDisabled,
              ),
            ),
            title: 'On Way',
            placeTitleAtStart: true,
          ),
          EasyStep(
            customStep: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 7,
                backgroundColor:
                    activeStep == 2 ? AppColors.inputFocusedBorder : AppColors.buttonDisabled,
              ),
            ),
            title: 'Delivered',
          ),
        ],
        onStepReached: (index) =>
            setState(() => activeStep = index),
    ),
           
           ///Continue Button 
           customeButton(minWidth: w*.8 , h: h, w: w, onPressed: (){}, text: customeText(text: "Continue", fontSize: 18 , textColor: AppColors.white, ))
        
         ],
       ),
    );
  }
}