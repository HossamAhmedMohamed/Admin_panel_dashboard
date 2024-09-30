import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/all_expenses.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_drawer.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),

        SizedBox(width: 32,),

        Expanded(
          flex: 2,
          child: Column(
          children: [
            Expanded(child: AllExpenses())
          ],
        ))
      ],
    );
  }
}