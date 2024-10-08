import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/models/income_item_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/income_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static List items = [
    IncomeItemModel(
        title: 'Design service', color: Color(0xFF208CC8), percent: '40%'),
    IncomeItemModel(
        title: 'Design product', color: Color(0xFF4EB7F2), percent: '25%'),
    IncomeItemModel(
        title: 'Product royalti', color: Color(0xFF064061), percent: '20%'),
    IncomeItemModel(title: 'Other', color: Color(0xFFCCCCCC), percent: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e)=> Incomeitem(incomeItemModel: e)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return Incomeitem(
    //       incomeItemModel: items[index],
    //     );
    //   },
    // );
  }
}
