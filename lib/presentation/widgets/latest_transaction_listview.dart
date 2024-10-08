import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_images.dart';
import 'package:responsive_tharwat_samy/models/user_info_model.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/user_info_list_tile.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});

  static const items = [
    UserInfoModel(
        img: Assets.imagesAvatar1,
        title: "Ahmed Salah",
        subtitle: "Ahmedsalah@gmail.com"),
    UserInfoModel(
        img: Assets.imagesAvatar2,
        title: "Mohamed Ahmed",
        subtitle: "Mohamedahmed@gmail.com"),
    UserInfoModel(
        img: Assets.imagesAvatar3,
        title: "amir mostafa",
        subtitle: "amirmostafa@gmail.com"),
    UserInfoModel(
        img: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subtitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        img: Assets.imagesAvatar3,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: items[index]));
          }),
    );
  }
}
