import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/all_expenses.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/quick_in_voice_.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
    children: [
      // SizedBox(
      //   height: 30,
      // ),
      AllExpenses(),
      SizedBox(
        height: 24,
      ),
      QuickInvoice(),
    ],
            );
  }
}