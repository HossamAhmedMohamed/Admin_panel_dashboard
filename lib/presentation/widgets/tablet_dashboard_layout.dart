import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_drawer.dart'; 
import 'package:responsive_tharwat_samy/presentation/widgets/mobile_dashboard_layout.dart';
 

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: MobileDashBoardLayout(),
        )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

