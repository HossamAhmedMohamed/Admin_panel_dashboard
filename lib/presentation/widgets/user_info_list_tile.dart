// ignore_for_file: prefer_typing_uninitialized_variables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_tharwat_samy/constants/app_images.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle});

  final String img, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(img),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context) ,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12(context) ,
        ),
      ),
    );
  }
}
