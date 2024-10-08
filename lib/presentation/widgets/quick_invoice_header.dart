import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(14),
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFFAFAFA),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Color(0xFF4EB7F2),
            ),
          )
        ),
      ],
    );
  }
}
