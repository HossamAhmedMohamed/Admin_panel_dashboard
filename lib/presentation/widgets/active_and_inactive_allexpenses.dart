// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';
import 'package:responsive_tharwat_samy/models/all_expenses_item_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/all_expenses_item_header.dart';

class inActiveAllExpenses extends StatelessWidget {
  const inActiveAllExpenses({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFFF1F1F1),
                ),
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              img: itemModel.img,
            ),
            SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: AppStyles.styleMedium16(context),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.date,
                style: AppStyles.styleRegular14(context),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyles.styleSemiBold24(context),
              ),
            )
          ],
        ));
  }
}

class ActiveAllExpenses extends StatelessWidget {
  const ActiveAllExpenses({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: ShapeDecoration(
            color: Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF4EB7F2)),
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imageBackground: Colors.white.withOpacity(0.10000000149011612),
              imageColor: Colors.white,
              img: itemModel.img,
            ),
            SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.date,
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: Color(0xFFFAFAFA)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
            )
          ],
        ));
  }
}
