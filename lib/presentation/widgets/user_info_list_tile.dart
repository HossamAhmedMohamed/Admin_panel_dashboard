// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_tharwat_samy/constants/app_images.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';
import 'package:responsive_tharwat_samy/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  UserInfoListTile({super.key, required this.userInfoModel});

  UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.img),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoModel.subtitle,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
