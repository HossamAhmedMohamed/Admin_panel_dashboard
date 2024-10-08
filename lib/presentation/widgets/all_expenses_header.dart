// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Expenses",
         style: AppStyles.styleSemiBold20(context)),
         
         Expanded(child: SizedBox()),

         RangeOptions()
         ],
    );
  }
}

