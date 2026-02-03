// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/auth/presentation/screens/general_auth_screen.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_auth_screens_title.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> globalKey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
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
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => GeneralAuthScreen()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.only(top: h * .05),
        child: Form(
          key: globalKey,
          child: Column(
            children: [
              customeAuthScreensTitle(text: "Sign Up to Wikala"),
              SizedBox(height: h * .04),

              /// full name textformfield
              customeTextFormField(
                text: 'Full name *',
                h: h,
                w: w,
                hint: 'First and Last Name',
                controller: name,
              ),

              SizedBox(height: h * .02),

              /// full name textformfield
              customeTextFormField(
                text: 'Phone Number with Whatsapp *',
                h: h,
                w: w,
                hint: 'Mobile Number',
                controller: name,
                preText: "+20 ",
              ),

              SizedBox(height: h * .02),

              /// full name textformfield
              customeTextFormField(
                text: 'Password *',
                h: h,
                w: w,
                hint: 'Password',
                controller: name,
              ),

              ///SignUp Button
              SizedBox(height: h * .05),
              customeButton(
                bottonPading: h*.03,
                minWidth: w * .7,
                h: h,
                w: w,
                onPressed: () {},
                text: customeText(
                  text: "Sign Up",
                  fontSize: 18,
                  textColor: AppColors.white,
                ),
              ),

               Row(
              mainAxisAlignment: .center,
              children: [
              customeText(text: "Already have an account?", fontSize: 18 , textColor: AppColors.black,),
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
                    child: customeText(text: "Login", fontSize: 18 , textColor: AppColors.info,)),
                  Container(height: 2,width: w*.18,color: AppColors.info,)
                ],
              ),
            ),
                ],
              )
            ],)
            ],
          ),
        ),
      ),
    );
  }
}

class customeTextFormField extends StatelessWidget {
  const customeTextFormField({
    super.key,
    required this.text,
    required this.h,
    required this.w,
    required this.hint,
    required this.controller,
    this.validator,
    this.preText,
  });

  final double h;
  final double w;
  final String text;
  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? preText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .08),
          child: customeText(
            text: text,
            fontSize: 15,
            textColor: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: h * .015),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .04),
          child: TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              prefixText: preText ?? "",
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.textSecondary),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.textSecondary),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
