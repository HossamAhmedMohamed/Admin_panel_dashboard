// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/all_expenses_header.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/all_expenses_list_view.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesListView()
        ],
      ),
    );
  }
}

