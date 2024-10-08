// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
       required this.img,
       this.imageColor,
       this.imageBackground});

  final String img;

  final Color? imageColor, imageBackground;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(   
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: imageBackground ??  Color(0xFFFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(img,
                  colorFilter: ColorFilter.mode( imageColor ?? Color(0xFF4EB7F2), BlendMode.srcIn),),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? Color(0xFF064061) : Colors.white,
          ),
        )
      ],
    );
  }
}
