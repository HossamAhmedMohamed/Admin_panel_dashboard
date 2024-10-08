import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/size_config.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/detailed_income_chart.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/income_chart.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.sizeOf(context).width;
    return widthScreen >= SizeConfig.desktop && widthScreen < 1750 ? Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DetailedIncomeChart(),
      ),
    ) : const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex: 2, child: IncomeDetails())
      ],
    )  ;
  }
}
