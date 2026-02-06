// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';

class ProductOptions extends StatefulWidget {
  const ProductOptions({super.key});

  @override
  State<ProductOptions> createState() => _ProductOptionsState();
}

class _ProductOptionsState extends State<ProductOptions> {
  String? selectedWeight;
  String? selectedAddon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Select Weight
        ExpansionTile(
          
          title: customeText(text: "Select weight", fontSize: 18 , textColor: AppColors.black, fontWeight: FontWeight.bold,),
          children: [
            RadioListTile<String>(
              title: const Text('50 Gram - 4.00 KD'),
              value: '50g',
              groupValue: selectedWeight,
              onChanged: (value) {
                setState(() {
                  selectedWeight = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('1 Kg - 6.25 KD'),
              value: '1kg',
              groupValue: selectedWeight,
              onChanged: (value) {
                setState(() {
                  selectedWeight = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('2 Kg - 12.00 KD'),
              value: '2kg',
              groupValue: selectedWeight,
              onChanged: (value) {
                setState(() {
                  selectedWeight = value;
                });
              },
            ),
          ],
        ),


        /// Select Addons
        ExpansionTile(
         title: customeText(text: "Select Addonss", fontSize: 18 , textColor: AppColors.black, fontWeight: FontWeight.bold,),
          children: [
            RadioListTile<String>(
              title: const Text('50 Gram - 4.00 KD'),
              value: 'addon_50g',
              groupValue: selectedAddon,
              onChanged: (value) {
                setState(() {
                  selectedAddon = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('1 Kg - 6.25 KD'),
              value: 'addon_1kg',
              groupValue: selectedAddon,
              onChanged: (value) {
                setState(() {
                  selectedAddon = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
