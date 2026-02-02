import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/auth/presentation/screens/general_auth_screen.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body:Column(
        children: [

          ///Skip text
          Padding(
            padding:  EdgeInsets.only(left: w*.8 , top: h*.06),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GeneralAuthScreen(),));
              },
              child: Column(
                children: [
                  customeText(text: "Skip", fontSize: 15 , textColor: AppColors.textSecondary,),
                  Container(height: 2,width: w*.07,color: AppColors.textSecondary,)
                ],
              ),
            ),
          ),
        
          /// image
          Center(
            child: Image.asset("assets/images/onboarding.png" , height: h*.5, width: w*.8,)),
          
          /// Text1 
          customeText(text: text1, fontSize: 22 , textColor: AppColors.black,fontWeight: FontWeight.bold,),
           
           SizedBox(height: h*.01,),

          /// Text2
          customeText(text: text2, fontSize: 17 , textColor: AppColors.textSecondary,fontWeight: FontWeight.normal,),

          
        ],
      )
      );
  }
}

