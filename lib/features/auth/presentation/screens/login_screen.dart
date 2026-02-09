import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:fruit/features/auth/presentation/screens/general_auth_screen.dart';
import 'package:fruit/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_auth_screens_title.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_phone_form_field.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_text_form_field.dart';
import 'package:fruit/features/buttom_nav_bar/screens/nav_bar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> globalKey = GlobalKey();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  String fullPhone = '';

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
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => GeneralAuthScreen()),
              (route) => false,
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.only(top: h * .05),
        child: Form(
          key: globalKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                customeAuthScreensTitle(text: " Login to Wikala"),
                SizedBox(height: h * .04),

                /// phone textformfield
                CustomPhoneFormField(
                  text: 'Phone Number with Whatsapp *',
                  h: h,
                  w: w,
                  onChanged: (value) {
                    setState(() {
                      fullPhone = value;
                    });
                  },
                ),

                SizedBox(height: h * .02),

                /// password textformfield
                customeTextFormField(
                  text: 'Password *',
                  h: h,
                  w: w,
                  hint: 'Password',
                  controller: password,
                ),

                SizedBox(height: h * .01),

                ///Forget password
                Padding(
                  padding: EdgeInsets.only(left: w * .5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPasswordScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        customeText(
                          text: "Forget Password?",
                          fontSize: 18,
                          textColor: AppColors.info,
                        ),
                        Container(
                          height: 2,
                          width: w * .4,
                          color: AppColors.info,
                        ),
                      ],
                    ),
                  ),
                ),

                ///SignUp Button
                SizedBox(height: h * .05),
                customeButton(
                  bottonPading: h * .03,
                  minWidth: w * .7,
                  h: h,
                  w: w,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => NavBarScreen(),), (route) => false,);
                  },
                  text: customeText(
                    text: "Login",
                    fontSize: 18,
                    textColor: AppColors.white,
                  ),
                ),

                Row(
                  mainAxisAlignment: .center,
                  children: [
                    customeText(
                      text: "Don’t have an account? ",
                      fontSize: 18,
                      textColor: AppColors.black,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GeneralAuthScreen(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ),
                                  );
                                },
                                child: customeText(
                                  text: "Sign Up",
                                  fontSize: 18,
                                  textColor: AppColors.info,
                                ),
                              ),
                              Container(
                                height: 2,
                                width: w * .18,
                                color: AppColors.info,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
