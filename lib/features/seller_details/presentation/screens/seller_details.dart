import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/buttom_nav_bar/screens/nav_bar_screen.dart';
import 'package:fruit/features/product_details/presentation/screens/product_details.dart';
import 'package:fruit/features/seller_details/presentation/widget/custome_product_card.dart';
import 'package:fruit/features/seller_details/presentation/widget/custome_seller_details_card.dart';

class SellerDetails extends StatefulWidget {
  const SellerDetails({super.key});

  @override
  State<SellerDetails> createState() => _SellerDetailsState();
}

class _SellerDetailsState extends State<SellerDetails> {
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
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => NavBarScreen()),
              (route) => false,
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

        actions: [
          Image.asset("assets/icons/search.png", height: h * .03),
          SizedBox(width: w * .05),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: w * .04),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            /// Seller Card
            Center(
              child: customSellerDetailsCard(
                h: h,
                w: w,
                sellerName: 'Seller name',
                deleveryCharge: '40 to 60 Min',
                selerStatus: 'Open',
                order: 'Beverages',
                rate: 2.5,
                sellerIcon: "assets/icons/offerIcon.png",
                onTap: () {
                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SellerDetails()),
                  //   (route) => false,
                  // );
                },
              ),
            ),
            SizedBox(height: h * .0250),

            ///Categories
            customeText(
              text: "Categories",
              fontSize: 18,
              textColor: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Column(
                  children: [
                    customeCaegoreCard(
                      h: h,
                      w: w,
                      image: "assets/images/Fruits.png",
                    ),
                    SizedBox(height: h * .0250),
                    customeText(
                      text: "Fruits",
                      fontSize: 14,
                      textColor: AppColors.black,
                    ),
                  ],
                ),

                Column(
                  children: [
                    customeCaegoreCard(
                      h: h,
                      w: w,
                      image: "assets/images/Vegetables.png",
                    ),
                    SizedBox(height: h * .0250),
                    customeText(
                      text: "Vegetables",
                      fontSize: 14,
                      textColor: AppColors.black,
                    ),
                  ],
                ),

                Column(
                  children: [
                    customeCaegoreCard(
                      h: h,
                      w: w,
                      image: "assets/images/Phone.png",
                    ),
                    SizedBox(height: h * .0250),
                    customeText(
                      text: "Phones",
                      fontSize: 14,
                      textColor: AppColors.black,
                    ),
                  ],
                ),

                Column(
                  children: [
                    customeCaegoreCard(
                      h: h,
                      w: w,
                      image: "assets/images/Pets.png",
                    ),
                    SizedBox(height: h * .0250),
                    customeText(
                      text: "Pets",
                      fontSize: 14,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: h * .0250),

            ///Products
            customeText(
              text: "Products",
              fontSize: 18,
              textColor: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: h * .0250),

            /// Product Card
            customeProductCard(
              h: h,
              w: w,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetails()),
                  (route) => false,
                );
              }, productImage: 'assets/images/Vegetables.png', productName: 'Product name',
            ),
          ],

          ///
        ),
      ),
    );
  }
}

