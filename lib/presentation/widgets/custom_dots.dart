import 'package:flutter/material.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
          color: isActive ? Color(0xFF4EB7F2) : Color(0xFFE8E8E8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
