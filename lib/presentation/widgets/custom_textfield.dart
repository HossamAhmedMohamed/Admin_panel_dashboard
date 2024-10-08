import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint});

  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0xFFAAAAAA)),
          hintText: hint,
          fillColor: Color(0xFFFAFAFA),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color(0xFFFAFAFA)));
  }
}
