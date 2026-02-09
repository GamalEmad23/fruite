import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/favourit/widgets/custome_favourit_product_card.dart';

class FavouritScreen extends StatefulWidget {
  const FavouritScreen({super.key});

  @override
  State<FavouritScreen> createState() => _FavouritScreenState();
}

class _FavouritScreenState extends State<FavouritScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.background,
       appBar: AppBar(
        backgroundColor: AppColors.background,
        title: customeText(
          text: "My Favourit",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          textColor: AppColors.buttonPrimary,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
          },
          icon: Icon(Icons.arrow_back_ios))),
       
       body: Column(
        children: [
         customeFavouritProductCard(h: h, w: w, productImage: 'assets/images/Fruits.png', productName: 'productName', storeName: 'Store1',),
        ],
       ),
    );
  }
}
