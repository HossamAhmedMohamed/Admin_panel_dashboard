import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.color});

  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
           
            elevation: 0,
            shape:
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            backgroundColor: color),
        child: Text(
          title,
          style: color == Color(0xFF4EB7F2)
              ? AppStyles.styleSemiBold18(context)
              : AppStyles.styleSemiBold18(context)
                  .copyWith(color: Color(0xFF4EB7F2)),
        ),
      ),
    );
  }
}
