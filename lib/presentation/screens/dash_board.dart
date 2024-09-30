// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/adaptive_layout.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/desktop_dashboard.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout:  (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context)=> DesktopDashboard()),
    );
  }
}
