import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/income_section.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/my_cards_and_transaction_history_section.dart';

class MobileDashBoardLayout extends StatelessWidget {
  const MobileDashBoardLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24,),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 24,),
          IncomeSection()
        ],
      ),
    );
  }
}
