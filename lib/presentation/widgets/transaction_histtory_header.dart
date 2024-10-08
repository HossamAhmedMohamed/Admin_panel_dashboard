import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History",style: AppStyles.styleSemiBold20(context),),
    
        Text("See all",style: AppStyles.styleMedium16(context).copyWith(color: Color(0xFF4EB7F2)),)
    
      ],
    );
  }
}