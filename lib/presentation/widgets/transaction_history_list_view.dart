 import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/models/transaction_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static List items = [
    TransactionModel(true,
        title: "Cash Withdrawal", date: "13 Apr, 2022", amount: "\$20,129"),
    TransactionModel(false,
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: "\$2,000"),
    TransactionModel(false,
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: "\$20,129"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e)=> TransactionItem(transactionModel: e)).toList(),
    );
 
  }
}
