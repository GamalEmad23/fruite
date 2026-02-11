import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/more/presentation/screens/contact_us_screen.dart';
import 'package:fruit/features/more/presentation/screens/terms_and_condition_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: customeText(
          text: "Fruit Market",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          textColor: AppColors.buttonPrimary,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(builder: (context) => NavBarScreen()),
            //   (route) => false,
            // );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Image Container
            Center(
              child: Container(
                height: h*.11,
                width: w*.25,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(color: AppColors.black, width: 1),
                ),
        
                child: Padding(
                  padding:  EdgeInsets.all(w*.06),
                  child: Image.asset("assets/icons/person.png" , height: h*.12,width: w*.3,),
                ),
              ),
            ),
            SizedBox(height: h*.02),
            
            ///
            customeText(text: "Welcome, Fruit Market", fontSize: 24 , fontWeight: FontWeight.normal, textColor: AppColors.black,),
            SizedBox(height: h*.02),
            
        
            /// Login Button
            customeButton(h: h, w: w, onPressed: (){}, text: customeText(text: "Login", fontSize: 18 , textColor: AppColors.white,) , minWidth: w*.8,  color: AppColors.buttonPrimary, bottonPading: h*.025,),
            SizedBox(height: h*.01),
        
            /// 
            customeMoreRow(w: w, h: h, imagePath: 'assets/icons/person.png', title: 'Profile'),
            customeMoreRow(w: w, h: h, imagePath: 'assets/icons/order.png', title: 'My Orders'),
            customeMoreRow(w: w, h: h, imagePath: 'assets/icons/favourit.png', title: 'Favorite'),
            customeMoreRow(w: w, h: h, imagePath: 'assets/icons/Language.png', title: 'Language'),
            customeMoreRow(w: w, h: h, imagePath: 'assets/icons/support.png', title: 'Support' , onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactUsScreen(),));
            },),
            customeMoreRow(w: w, h: h, imagePath: 'assets/icons/teams.png', title: 'Terms & Conditions' , onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsAndConditionScreen(),));
            },),
            customeMoreRow(w: w, h: h, imagePath: 'assets/icons/about.png', title: 'About Us'),
            
        
        
        
          ],
        ),
      ),

    );
  }
}

class customeMoreRow extends StatelessWidget {
  const customeMoreRow({
    super.key,
    required this.w,
    required this.h, required this.imagePath, required this.title, this.imageColor, this.onTap,
  });

  final double w;
  final double h;
  final String imagePath;
  final String title;
  final Color? imageColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: w*.05 , vertical: h*.02),
      child: GestureDetector(
        onTap:onTap ,
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(imagePath , height: h*.03,width: w*.06, color: imageColor ?? AppColors.black,),
                SizedBox(width: w*.05),
                customeText(text: title, fontSize: 16 , textColor: AppColors.black,)
              ],
            ),
        
            Icon(Icons.arrow_forward_ios , size: 20, color: AppColors.textHint,),
          ],
        ),
      ),
    );
  }
}
