import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/auth/presentation/screens/login_screen.dart';
import 'package:fruit/features/auth/presentation/screens/otp_screen.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_auth_screens_title.dart';
import 'package:fruit/features/auth/presentation/widgets/custome_phone_form_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  GlobalKey<FormState> globalKey = GlobalKey();
  TextEditingController phone = TextEditingController();
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
              MaterialPageRoute(builder: (context) => LoginScreen()),
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
                customeAuthScreensTitle(text: "Enter your Number"),
                SizedBox(height: h * .04),

                /// phone textformfield
                CustomPhoneFormField(
                  text: 'Phone Number with Whatsapp *',
                  h: h,
                  w: w,
                  onChanged: (value) {
                    fullPhone = value; // +201xxxxxxxx
                  },
                ),

                ///SignUp Button
                SizedBox(height: h * .05),
                customeButton(
                  bottonPading: h * .03,
                  minWidth: w * .7,
                  h: h,
                  w: w,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => OtpScreen(),), (route) => false,);
                  },
                  text: customeText(
                    text: "Submit",
                    fontSize: 18,
                    textColor: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
