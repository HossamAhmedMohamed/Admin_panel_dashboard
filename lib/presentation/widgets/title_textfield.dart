import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_textfield.dart';

class TitleTextfield extends StatelessWidget {
  const TitleTextfield({super.key, required this.title, required this.hint});

  final String title , hint; 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( title,
        style: AppStyles.styleMedium16(context),
        ),

        SizedBox(
          height: 12,
        ),

        CustomTextfield(hint: hint )
      ],
    );
  }
}