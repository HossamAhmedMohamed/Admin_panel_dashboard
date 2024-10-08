// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/models/all_expenses_item_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/active_and_inactive_allexpenses.dart';
 

class AllExpensesItem extends StatelessWidget {
  AllExpensesItem({super.key, required this.itemModel, required this.isActive});

  AllExpensesItemModel itemModel;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveAllExpenses(itemModel: itemModel) : inActiveAllExpenses(itemModel: itemModel);
  }
}

 


