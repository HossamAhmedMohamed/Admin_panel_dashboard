import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/my_card.dart';

class MycardPageView extends StatelessWidget {
  const MycardPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => MyCard()),
    );
  }
}
