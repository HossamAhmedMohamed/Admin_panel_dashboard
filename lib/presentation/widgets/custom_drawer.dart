import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_images.dart';
import 'package:responsive_tharwat_samy/models/drawer_item_model.dart';
import 'package:responsive_tharwat_samy/models/user_info_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/active_and_inactive_drawer.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/drawer_item_list_view.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  img: Assets.imagesAvatar3,
                  title: "Hossam Ahmed",
                  subtitle: "hossaaamahmed6@gmail.com"),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
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
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 48,
          ))
        ],
      ),
    );
  }
}
