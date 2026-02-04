import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomPhoneFormField extends StatefulWidget {
  const CustomPhoneFormField({
    super.key,
    required this.text,
    required this.h,
    required this.w,
    required this.onChanged,
  });

  final double h;
  final double w;
  final String text;
  final Function(String phone) onChanged;

  @override
  State<CustomPhoneFormField> createState() => _CustomPhoneFormFieldState();
}

class _CustomPhoneFormFieldState extends State<CustomPhoneFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.w * .08),
          child: customeText(
            text: widget.text,
            fontSize: 15,
            textColor: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: widget.h * .015),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.w * .04),
          child: InternationalPhoneNumberInput(
            initialValue: PhoneNumber(isoCode: 'EG'), // أو EG / LY
            selectorConfig: const SelectorConfig(
              setSelectorButtonAsPrefixIcon: true,
              selectorType: PhoneInputSelectorType.DIALOG,
              leadingPadding: 6,
              useBottomSheetSafeArea: true,
              showFlags: true,
              useEmoji: true,
            ),
            spaceBetweenSelectorAndTextField: 8,
            formatInput: false,
            keyboardType: TextInputType.phone,
            autoValidateMode: AutovalidateMode.onUserInteraction,
            onInputChanged: (PhoneNumber value) {
              if (value.phoneNumber != null) {
                widget.onChanged(value.phoneNumber!);
              }
            },
            inputDecoration: InputDecoration(
              hintText: 'Mobile Number',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 12,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.textSecondary),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.primary),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
