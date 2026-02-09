import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customeFavouritProductCard extends StatelessWidget {
  const customeFavouritProductCard({
    super.key,
    required this.h,
    required this.w,
    required this.productImage,
    required this.productName,
    required this.storeName, this.onPressed,
  });

  final double h;
  final double w;
  final String productImage;
  final String productName;
  final String storeName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Image.asset(productImage),
              ),
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

              ///Store Name
              Row(
                children: [
                  customeText(
                    text: "Store Name : ",
                    fontSize: 16,
                    textColor: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  customeText(
                    text: storeName,
                    fontSize: 16,
                    textColor: AppColors.textSecondary,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ],
          ),

          /// delete icon
          Column(
            mainAxisAlignment: .start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: h * .045,
                  width: w * .1,
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
                
                  child: Center(child: IconButton(onPressed: onPressed, icon: Icon(Icons.close))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
