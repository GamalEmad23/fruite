
import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class customSellerDetailsCard extends StatelessWidget {
  const customSellerDetailsCard({
    super.key,
    required this.h,
    required this.w, required this.sellerName, required this.deleveryCharge, required this.selerStatus, required this.order, this.sellerIcon, this.onTap, required this.rate 
  });
  final String sellerName;
  final String deleveryCharge;
  final String selerStatus;
  final String order;
  final double rate;
  final String? sellerIcon;
  final void Function()? onTap;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: h * .16,
        width: w * .95,
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
            ///Image
            Image.asset(
              "assets/images/product_test_image.png",
              height: h * .15,
              width: w * .2,
            ),
      
            ///
            Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .spaceEvenly,
              children: [
    
                    Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                    customeText(
                      text:  sellerName,
                      fontSize: 19,
                      textColor: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(width: w*.2,),
                    Image.asset(sellerIcon ?? "assets/icons/white_image.png" , height: h*.04,)
                  ],
                ),
                    SizedBox(width: w*.025,),
                  
      
                /// delevary row
                customeText(
                  text: " Delivery Charges : $deleveryCharge",
                  fontSize: 14,
                  textColor: AppColors.textSecondary,
                  fontWeight: FontWeight.normal,
                ),
      
                /// statues row
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    customeText(
                      text: selerStatus,
                      fontSize: 14,
                      textColor: AppColors.inputFocusedBorder,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(width: w*.1,),
                    customeText(
                      text: "$rate",
                      fontSize: 14,
                      textColor: AppColors.darkBlue,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),
            
            /// rate and location 
           
         
          ],
        ),
      ),
    );
  }
}

class customeCaegoreCard extends StatelessWidget {
  const customeCaegoreCard({
    super.key,
    required this.h,
    required this.w,
    required this.image,
  });

  final String image;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: h * .11,
          width: w * .21,
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

          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(50),
            child: Image.asset(image),
          ),
        ),
      ],
    );
  }
}

class customeIcon extends StatelessWidget {
  const customeIcon({
    super.key,
    required this.h,
    required this.w,
    required this.image,
    this.onTap,
  });

  final String image;
  final void Function()? onTap;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(image, height: h * .07, width: w * .08),
    );
  }
}
