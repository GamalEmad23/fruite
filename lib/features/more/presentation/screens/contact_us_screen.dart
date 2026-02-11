import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/more/presentation/widgets/custome_support_text_form_field.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: customeText(
          text: "Contact Us",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          textColor: AppColors.buttonPrimary,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          )),
      
      body: Column(
        children: [
          customeSupportTextFormField(text: "Name", h: h, w: w, controller: name),
          customeSupportTextFormField(text: "Phone", h: h, w: w, controller: phone),
          customeSupportTextFormField(text: "Message", h: h, w: w, controller: message),
          SizedBox(height: h*.025,),

          customeButton(h: h, w: w, onPressed: (){}, text: customeText(text: "Submit", fontSize: 18 , textColor: AppColors.white,) , minWidth: w*.8, bottonPading: h*.025,),
          SizedBox(height: h*.025,),

          Row(
            mainAxisAlignment: .center,
            children: [
              Image.asset("assets/icons/phone.png" , height: h*.055,),
              SizedBox(width: w*.05,),
              Image.asset("assets/icons/facebook.png" , height: h*.055,),
              SizedBox(width: w*.05,),
              Image.asset("assets/icons/instgram.png" , height: h*.055,),
              SizedBox(width: w*.05,),
              Image.asset("assets/icons/youtube.png" , height: h*.055,),
            ],
          )

        ],
      ),
    );
  }
}