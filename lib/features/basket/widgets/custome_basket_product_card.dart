import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customBasketProductCard extends StatelessWidget {
  const customBasketProductCard({
    super.key,
    required this.h,
    required this.w,
    this.onTap, required this.productImage, required this.productName,
  });

  final double h;
  final double w;
  final void Function()? onTap;
  final String productImage ;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: h * .16,
        width: w * .97,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
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
          mainAxisAlignment: .spaceEvenly,
          children: [
            ///Product Image
            Container(
              height: h * .12,
              width: w * .25,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(100),
                child: Image.asset(productImage),
              ),
            ),

            ///Product name and details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customeText(
                  text: productName,
                  fontSize: 16,
                  textColor: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),

                ///price
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '12.00 KD',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '14.00 KD',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),

                ///offer continer
                Container(
                  height: h * .04,
                  width: w * .36,
                  decoration: BoxDecoration(
                    color: AppColors.lightRed,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Center(
                    child: customeText(
                      text: "Up to 10% Off",
                      fontSize: 16,
                      textColor: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            /// delete icon and number
            Column(
              mainAxisAlignment: .spaceAround,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever , size: 30,)),

                ///Counter
                Container(
                  width: w*.3,
                  height: h*.05,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                     boxShadow: [
                     BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: const Offset(0, 8),
                  ),
                ],

                borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.remove , size: 15,) ),
                      customeText(text: "1", fontSize: 15),
                      IconButton(onPressed: (){}, icon: Icon(Icons.add , size: 15,)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
