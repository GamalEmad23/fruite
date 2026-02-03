import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_auth_card.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_auth_screens_title.dart';

class GeneralAuthScreen extends StatelessWidget {
  const GeneralAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: h*.05),
        child: Column(
          children: [
           customeAuthScreensTitle(text: "Welcome to Our app"),
            
             SizedBox(height: h*.05,),
            /// Sign in with phone card
            customeAuthCard(h: h, w: w, image: 'assets/icons/Icon material-local-phone.png', text: 'Sign in with Phone Number', background: AppColors.white, textColor: AppColors.black,),
            SizedBox(height: h*.03,),
            /// Sign in with google card
            customeAuthCard(h: h, w: w, image: 'assets/icons/google.png', text: 'Sign in with Google', background: AppColors.white, textColor: AppColors.black),
        
             SizedBox(height: h*.03,),
            /// Sign in with facebook card
            customeAuthCard(h: h, w: w, image: 'assets/icons/Icon material-local-facebook.png', text: 'Sign in with  Facebook', background: AppColors.info, textColor: AppColors.white),
            
             SizedBox(height: h*.04,),
            ///
            Row(
              mainAxisAlignment: .center,
              children: [
              customeText(text: "Don’t have an account?", fontSize: 18 , textColor: AppColors.black,),
              Column(
                children: [
                   GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GeneralAuthScreen(),));
              },
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen(),));
                    },
                    child: customeText(text: " Sign up", fontSize: 18 , textColor: AppColors.info,)),
                  Container(height: 2,width: w*.18,color: AppColors.info,)
                ],
              ),
            ),
                ],
              )
            ],)
            ,
            ///
             SizedBox(height: h*.06,),
             
             RichText(
              maxLines: 2,
              textAlign: TextAlign.center,
              text: TextSpan(
               text: "By continue you agree to our",
               style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16
               ),
               children: [
                TextSpan(
                  text: " Terms of service\n",
                  style: TextStyle(color: AppColors.info , fontSize: 16)
                ),

                TextSpan(
                  text: " and our",
                  style: TextStyle(color: AppColors.textSecondary , fontSize: 16)
                ),

                 TextSpan(
                  text: " Privacy Policy",
                  style: TextStyle(color: AppColors.info , fontSize: 16)
                ),
               ]
             ) ,
             )
          ],
        ),
      ),
    );
  }
}
