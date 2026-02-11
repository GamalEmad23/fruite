// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: customeText(
          text: "Terms and Conditions",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          textColor: AppColors.buttonPrimary,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.start,
              style: TextStyle(color: AppColors.black, fontSize: 15),
              """
           A Terms and Conditions agreement acts as
           a legal contractbetween you (the company)
           and the user. 
           It’s where you 
           maintain your rights to exclude users from 
           your app in the event that they abuse your 
           website/app, set out the rules for 
           using your service and note other important 
           details and disclaimers.    
               """,
            ),
            SizedBox(height: h*.02,),
        
            Text(
              textAlign: TextAlign.start,
              style: TextStyle(color: AppColors.black, fontSize: 15),
              """
          Having a Terms and Conditions agreement is 
          completely optional. No laws require you to 
          have one. Not even the super-strict and 
          wide-reaching General Data Protection 
          Regulation (GDPR).  
               """,
            ),
            SizedBox(height: h*.02,),
        
             Text(
              textAlign: TextAlign.start,
              style: TextStyle(color: AppColors.black, fontSize: 15),
              """ 
            Your Terms and Conditions agreement will 
            be uniquely yours. While some clauses are 
            standard and commonly seen in pretty much 
            every Terms and Conditions agreement, it’s 
            up to you to set the rules and guidelines that
             the user must agree to.
               """,
            ),
            SizedBox(height: h*.02,),
        
        
            Text(
              textAlign: TextAlign.start,
              style: TextStyle(color: AppColors.black, fontSize: 15),
              """ 
            Terms and Conditions agreements are also
            known as Terms of Service or Terms of Use 
            agreements. These terms are 
            interchangeable, practically speaking. 
            More rarely, it may be called something like 
            an End User Services Agreement (EUSA).
               """,
            ),
            SizedBox(height: h*.02,),
        
        
          
          ],
        ),
      ),
    );
  }
}
