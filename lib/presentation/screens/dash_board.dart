import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/adaptive_layout.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_drawer.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/desktop_dashboard.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/mobile_dashboard_layout.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/tablet_dashboard_layout.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.of(context).size.width < 800 ? CustomDrawer() : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => MobileDashBoardLayout(),
          tabletLayout: (context) => TabletDashboardLayout(),
          desktopLayout: (context) => DesktopDashboard()),
    );
  }
}
