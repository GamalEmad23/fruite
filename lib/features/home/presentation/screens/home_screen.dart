// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/home/presentation/widgets/custome_seller_card.dart';
import 'package:fruit/features/seller_details/presentation/screens/seller_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          fontSize: 28,
          fontWeight: FontWeight.bold,
          textColor: AppColors.buttonPrimary,
        ),
        actions: [
          customeIcon(h: h, w: w, image: 'assets/icons/search.png'),
          SizedBox(width: w * .025),
          customeIcon(h: h, w: w, image: 'assets/icons/setting.png'),
          SizedBox(width: w * .025),
        ],
      ),

      body: Column(
        children: [
          ///Slider
          Center(
            child: Container(
              height: h * .15,
              width: w * .9,
              decoration: BoxDecoration(
                color: AppColors.lightGreen,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: h * .035),

          ///Categores
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                customeCaegoreCard(
                  h: h,
                  w: w,
                  image: "assets/images/categ1.png",
                ),
                SizedBox(width: w * .025),
                customeCaegoreCard(
                  h: h,
                  w: w,
                  image: "assets/images/categ2.png",
                ),
                SizedBox(width: w * .025),
                customeCaegoreCard(
                  h: h,
                  w: w,
                  image: "assets/images/categ3.png",
                ),
                SizedBox(width: w * .025),
                customeCaegoreCard(
                  h: h,
                  w: w,
                  image: "assets/images/categ4.png",
                ),
              ],
            ),
          ),
          SizedBox(height: h * .035),

          /// see All
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * .025),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                customeText(
                  text: "Sellers",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.black,
                ),
                customeText(
                  text: "Show all",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.darkBlue,
                ),
              ],
            ),
          ),
          SizedBox(height: h * .02),

          ///Product Card
          customSellerCard(h: h, w: w, sellerName: 'Seller name', deleveryCharge: '0.5', selerStatus: 'Open', order: 'Beverages', destence: 2.5, sellerIcon: "assets/icons/offerIcon.png", onTap: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SellerDetails(),), (route) => false,);
          },),
        ],
      ),
    );
  }
}
