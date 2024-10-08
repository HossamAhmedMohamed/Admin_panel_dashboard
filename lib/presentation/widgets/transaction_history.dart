import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/transaction_history_list_view.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/transaction_histtory_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        TransactionHistoryHeader(),
        SizedBox(height: 20,),

        TransactionHistoryListView()
      ],
    );
  }
}

