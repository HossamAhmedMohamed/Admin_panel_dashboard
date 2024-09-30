import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/models/drawer_item_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/active_and_inactive_drawer.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDarwerItem(drawerItemModel: drawerItemModel)
        : inActiveDarwerItem(drawerItemModel: drawerItemModel);
  }
}


