// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/orders/presentation/widgets/custome_order_card.dart';

class OrdersScreens extends StatefulWidget {
  const OrdersScreens({super.key});

  @override
  State<OrdersScreens> createState() => _OrdersScreensState();
}

class _OrdersScreensState extends State<OrdersScreens> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.background,
       appBar: AppBar(
        backgroundColor: AppColors.background,
        title: customeText(
          text: "My Orders",
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
       
       body:customeOrderCard(h: h, w: w, image: 'assets/icons/delivering_icon.png', icon: 'assets/images/delivering.png', orderNumbe: "#123456789", orderStatus: "Delivering", date: "9 Sep", itemsNumber: 4,) ,
    );
  }
}
