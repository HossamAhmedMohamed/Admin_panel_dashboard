import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_images.dart';
import 'package:responsive_tharwat_samy/models/drawer_item_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/active_and_inactive_drawer.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/drawer_item_list_view.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                img: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com"),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20,
                )),
                inActiveDarwerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", image: Assets.imagesSetting2)),
                inActiveDarwerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account", image: Assets.imagesLogout)),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 48,
          ))
        ],
      ),
    );
  }
}
