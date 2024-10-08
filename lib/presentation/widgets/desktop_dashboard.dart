import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_drawer.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/income_section.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/my_cards_and_transaction_history_section.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: AllExpensesAndQuickInvoiceSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        MyCardsAndTransactionHistorySection(),
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(child: IncomeSection())
                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
