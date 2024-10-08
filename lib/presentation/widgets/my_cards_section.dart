import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/dots_indicator.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/mycard_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;

  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            "My card",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MycardPageView(pageController: pageController,),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(currentPageIndex: currentPageIndex,)
      ],
    );
  }
}
