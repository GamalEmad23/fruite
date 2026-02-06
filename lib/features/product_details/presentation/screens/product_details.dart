import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/product_details/presentation/widgets/custome_floating_action_button.dart';
import 'package:fruit/features/product_details/presentation/widgets/product_options.dart';
import 'package:fruit/features/seller_details/presentation/screens/seller_details.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      floatingActionButton: customeFloatingActionButtton(h: h, w: w, text: 'Add to Cart' , image: "assets/icons/basket.png", ),
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: customeText(
          text: "Product Name",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          textColor: AppColors.buttonPrimary,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => SellerDetails()),
              (route) => false,
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

        actions: [
          Image.asset(
            "assets/icons/favourit.png",
            height: h * .03,
            color: AppColors.black,
          ),
          SizedBox(width: w * .05),
          Image.asset(
            "assets/icons/share.png",
            height: h * .03,
            color: AppColors.black,
          ),
          SizedBox(width: w * .05),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
        
              ///Product Image
              child: Stack(
                children: [
                  Image.asset("assets/images/product_image.png"),
                  Positioned(
                    top: h * .025,
                    right: w * .025,
                    child: Container(
                      height: h * .03,
                      width: w * .35,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
        
                      child: Center(
                        child: customeText(
                          text: "10% Off Discount",
                          fontSize: 14,
                          textColor: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
            ///Product details
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .025),
              child: customeText(
                text: "Category Name",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textColor: AppColors.buttonPrimary,
              ),
            ),
            SizedBox(height: h * .025),
        
            ///Product name
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .025),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .end,
                children: [
                  customeText(
                    text: "Product name",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    textColor: AppColors.black,
                  ),
        
                  ///Price
                  Column(
                    children: [
                      customeText(
                        text: "Price",
                        fontSize: 14,
                        textColor: AppColors.textSecondary,
                      ),
                      Row(
                        children: [
                          customeText(
                            text: "KD12.00 ",
                            fontSize: 20,
                            textColor: AppColors.textSecondary,
                            fontWeight: FontWeight.bold,
                          ),
                          Text(
                            "KD14.00",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: h*.0250,),
            ///Description
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: w*.025),
              child: customeText(
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n sed do eiusmod tempor incididunt ut labore et dolore \n  magna aliqua. ",
                fontSize: 16,
                textColor: AppColors.textSecondary,
              ),
            ),
            ProductOptions(),
          ],
        ),
      ),
    );
  }
}
