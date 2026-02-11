// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class CustomePaymentOptionCard extends StatefulWidget {
  const CustomePaymentOptionCard({super.key, required this.h, required this.w, required this.title, required this.value, required this.groupValue, this.onChanged, required this.imagePath});
  
  final double h ;
  final double w ;
    final String title ;
    final String value ;
    final String groupValue ;
    final void Function(String?)? onChanged;
    final String imagePath;
  @override
  State<CustomePaymentOptionCard> createState() => _CustomePaymentOptionCardState();
}

class _CustomePaymentOptionCardState extends State<CustomePaymentOptionCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
            width: widget.w * .9,
            height: widget.h * .07,
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
             
             
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: widget.w * .08),
              child: Row(
                crossAxisAlignment: .center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Now radio button
                  Row(
                    children: [
                      Image.asset(widget.imagePath, height: widget.h * .03,),
                      SizedBox(width: widget.w*.025,),
                      customeText(
                        text: widget.title,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textColor: AppColors.black,
                      ),
                    ],
                  ),
                  
                  ///Now radio button
                  SizedBox(
                    height: widget.h * .06,
                    width: widget.w * .025,
                    child: Radio<String>(
                      value: widget.value,
                      groupValue:widget.groupValue,
                      onChanged: (value) {
                        setState(() {
                          widget.onChanged!(value);
                        });
                      },
                      activeColor: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}