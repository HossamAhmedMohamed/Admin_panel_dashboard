import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';
import 'package:responsive_tharwat_samy/models/income_item_model.dart';

class Incomeitem extends StatelessWidget {
  const Incomeitem({super.key, required this.incomeItemModel});

  final IncomeItemModel incomeItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
            ShapeDecoration(color: incomeItemModel.color, shape: OvalBorder()),
      ),
      title: Text(
        incomeItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemModel.percent,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
