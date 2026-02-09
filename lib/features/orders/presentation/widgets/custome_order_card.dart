
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customeOrderCard extends StatelessWidget {
  const customeOrderCard({
    super.key,
    required this.h,
    required this.w, required this.image, required this.icon, required this.orderNumbe, required this.orderStatus, required this.date, required this.itemsNumber,
  });

  final double h;
  final double w;
  final String image;
  final String icon;
  final String orderNumbe ;
  final String orderStatus ;
  final String date ;
  final int itemsNumber ;

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: .center,
     children: [
      Center(
        child: Container(
         height: h*.15,
         width: w*.88,
         decoration: BoxDecoration(
           color: AppColors.white,
           borderRadius: BorderRadius.circular(15),
           boxShadow: [
             BoxShadow(
             color: Colors.black12,
             blurRadius: 20,
             spreadRadius: 2,
             offset: const Offset(0, 8),
           ),
           ],
         ),
    
         child: Row(
           mainAxisAlignment: .spaceBetween,
           children: [
             Image.asset(image , height: h*.1, width: w*.2,),
             Column(
               mainAxisAlignment: .spaceEvenly,
               children: [
                 customeText(text: orderNumbe , fontSize: 18, fontWeight: FontWeight.bold, textColor: AppColors.black,),
                 Row(
                   children: [
                     customeText(text: date, fontSize: 16 , textColor: AppColors.textSecondary,),
                     SizedBox(width: w*.02),
                     customeText(text: " . $itemsNumber items", fontSize: 16 , textColor: AppColors.textSecondary,),
                   ],
                 ),
                 Row(
                   children: [
                     customeText(text: "Status: " , fontSize: 14, fontWeight: FontWeight.normal, textColor: AppColors.textDisabled,),
                     customeText(text: orderStatus , fontSize: 14, fontWeight: FontWeight.normal, textColor: AppColors.buttonSecondary,),
                   ],
                 ),                    
               ],
             ),
    
                 Image.asset(icon , height: h*.15, width: w*.25,),
    
           ],
         ),
        ),
      ) 
     ],
    );
  }
}