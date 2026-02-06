import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/basket/widgets/custome_basket_product_card.dart';
import 'package:fruit/features/product_details/presentation/widgets/custome_floating_action_button.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: h * .15),
        child: customeFloatingActionButtton(
          h: h,
          w: w,
          text: 'Procced To Checkout',
          minWidth: w * .6,
          onTap: () {
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/checkout_time', (route) => false);
          },
        ),
      ),
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: customeText(
          text: "Basket",
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

      body: Column(
        children: [
          ///Product Basket Card
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return customBasketProductCard(
                  h: h,
                  w: w,
                  productImage: 'assets/images/Fruits.png',
                  productName: 'Product name',
                );
              },
            ),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                DottedLine(
                  dashLength: 6,
                  dashGapLength: 4,
                  lineThickness: 1,
                  dashColor: Colors.grey,
                ),

                ///SubTotal
                customePriceDetailsRow(
                  title: customeText(
                    text: "Subtotal",
                    fontSize: 16,
                    textColor: AppColors.textSecondary,
                  ),
                  price: 36,
                  kd: 'Kd',
                ),

                ///Shipping Charges
                customePriceDetailsRow(
                  title: customeText(
                    text: "Shipping Charges",
                    fontSize: 16,
                    textColor: AppColors.textSecondary,
                  ),
                  price: 1.50,
                  kd: 'Kd',
                ),

                ///Bag Total
                customePriceDetailsRow(
                  title: customeText(
                    text: "Bag Total",
                    fontSize: 16,
                    textColor: AppColors.buttonPrimary,
                  ),
                  price: 1.50,
                  kd: 'Kd',
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * .03),
                  child: customeText(
                    text: "4 items in cart",
                    fontSize: 16,
                    textColor: AppColors.textSecondary,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * .03),
                  child: customeText(
                    text: "37.50 KD",
                    fontSize: 18,
                    textColor: AppColors.buttonPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class customePriceDetailsRow extends StatelessWidget {
  const customePriceDetailsRow({
    super.key,
    required this.title,
    required this.price,
    required this.kd,
  });

  final Widget title;
  final double price;
  final String kd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          title,
          Row(
            children: [
              customeText(
                text: price.toString(),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textColor: AppColors.buttonPrimary,
              ),
              SizedBox(width: 3),
              customeText(
                text: kd,
                fontSize: 14,
                textColor: AppColors.textSecondary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
