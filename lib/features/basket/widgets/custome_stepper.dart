// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

import 'package:fruit/core/themes/app_colors.dart';

class CustomeStepper extends StatefulWidget {
  const CustomeStepper({
    Key? key,
    required this.w,
    required this.activeStep,
  }) : super(key: key);

  final int activeStep;
  final double w;
  @override
  State<CustomeStepper> createState() => _CustomeStepperState();
}

class _CustomeStepperState extends State<CustomeStepper> {
  @override
  Widget build(BuildContext context) {
    return   EasyStepper( 
        showScrollbar: true,
        activeStep: widget.activeStep,
        activeStepTextColor: Colors.black87,
        finishedStepTextColor: Colors.black87,
        internalPadding: widget.w*.1 ,
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
                    widget.activeStep == 0 ? AppColors.inputFocusedBorder : AppColors.buttonDisabled,
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
                    widget.activeStep ==1 ? AppColors.inputFocusedBorder : AppColors.buttonDisabled,
              ),
            ),
            title: 'Delivery Address',
            enabled: true
            // placeTitleAtStart: true,
          ),
          
          EasyStep(
            customStep: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 7,
                backgroundColor:
                    widget.activeStep == 2 ? AppColors.inputFocusedBorder : AppColors.buttonDisabled,
              ),
            ),
            title: 'Payment',
          ),
        ],
       
        );
  }
}