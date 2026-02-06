import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_auth_screens_title.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_otp_fields.dart';
import 'package:fruit/features/home/presentation/screens/home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
   GlobalKey<FormState> globalKey = GlobalKey();
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
              MaterialPageRoute(builder: (context) => ForgetPasswordScreen()),
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
                customeAuthScreensTitle(text: "Enter Received OTP"),
                SizedBox(height: h * .04),

               PinputExample(),

                ///Confirm Button
                SizedBox(height: h * .05),
                customeButton(
                  bottonPading: h * .03,
                  minWidth: w * .7,
                  h: h,
                  w: w,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen(),), (route) => false,);
                  },
                  text: customeText(
                    text: "Confirm",
                    fontSize: 18,
                    textColor: AppColors.white,
                  ),
                ),
                
                SizedBox(height: h * .04),
                
                customeText(text: "60", fontSize: 30 , textColor: AppColors.textHint),

                SizedBox(height: h * .03),

                  Row(
                  mainAxisAlignment: .center,
                  children: [
                    customeText(
                      text: "Not received? ",
                      fontSize: 18,
                      textColor: AppColors.black,
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                              },
                              child: customeText(
                                text: "Send Again",
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
