import 'package:flutter/material.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key});

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Select Date",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        Container(
          width: 500,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              hintText: selectedDate == null
                  ? "MM - DD - YYYY"
                  : "${selectedDate!.month.toString().padLeft(2, '0')} - "
                    "${selectedDate!.day.toString().padLeft(2, '0')} - "
                    "${selectedDate!.year}",
              suffixIcon: const Icon(Icons.keyboard_arrow_down),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
            ),
            onTap: () async {
              DateTime? picked = await showDatePicker(
                context: context,
                initialDate: selectedDate ?? DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
          
              if (picked != null) {
                setState(() {
                  selectedDate = picked;
                });
              }
            },
          ),
        ),
      ],
    );
  }
}
