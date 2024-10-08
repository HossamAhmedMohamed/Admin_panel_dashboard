import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_container.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/my_cards_section.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: const Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory()
        ],
      ),
    );
  }
}
