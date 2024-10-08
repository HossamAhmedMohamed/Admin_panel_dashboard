import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/latest_transaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction",
        style: AppStyles.styleMedium16(context),
        
        ),
        SizedBox(
          height: 16,
        ),

        LatestTransactionListview()
      ],
    );
  }
}