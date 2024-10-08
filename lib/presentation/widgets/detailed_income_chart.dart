import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;

            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
             
              radius: activeIndex == 0 ? 60 : 50,
              title: activeIndex == 0 ? 'Design service' : '40%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(color: activeIndex == 0 ? null : Colors.white),
              value: 40,
              color: Color(0xFF208CC8)),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
             
              radius: activeIndex == 1 ?  60 : 50,
              title: activeIndex == 1 ? 'Design product' : '25%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(color: activeIndex == 1 ? null : Colors.white),
              value: 25,
              color: Color(0xFF4EB7F2)),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
               
              radius: activeIndex == 2 ?  60 : 50,
              title: activeIndex == 2 ? 'Product royalti' : '20%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(color: activeIndex == 2 ? null : Colors.white),
              value: 20,
              color: Color(0xFF064061)),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
             
              radius: activeIndex == 3 ?  60 : 50,
              title: activeIndex == 3 ? 'Other' : '22%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(color: activeIndex == 3 ? null : Colors.white),
              value: 22,
              color: Color(0xFFCCCCCC)),
        ]);
  }
}
