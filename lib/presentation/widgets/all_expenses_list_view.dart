import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_images.dart';
import 'package:responsive_tharwat_samy/models/all_expenses_item_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  static final items = [
    AllExpensesItemModel(
        img: Assets.imagesMoneys,
        title: "Balance",
        date: "April 2022",
        price: '\$20,129'),
    AllExpensesItemModel(
        img: Assets.imagesCardReceive,
        title: "Income",
        date: "April 2022",
        price: '\$20,129'),
    AllExpensesItemModel(
        img: Assets.imagesCardSend,
        title: "Expenses",
        date: "April 2022",
        price: '\$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(0);
          },
          child: AllExpensesItem(
            itemModel: items[0],
            isActive: selectedIndex == 0,
          ),
        )),

        SizedBox(width: 8,),


        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(1);
          },
          child: AllExpensesItem(
            itemModel: items[1],
            isActive: selectedIndex == 1,
          ),
        )),


        SizedBox(width: 8,),

        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(2);
          },
          child: AllExpensesItem(
            itemModel: items[2],
            isActive: selectedIndex == 2,
          ),
        ))
      ],
    );
   
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
