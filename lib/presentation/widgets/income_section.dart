import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_container.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/income_section_body.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: const Column(
        children: [

          IncomeSectionHeader(),
          
          IncomeSectionBody()
          ],
      ),
    );
  }
}


