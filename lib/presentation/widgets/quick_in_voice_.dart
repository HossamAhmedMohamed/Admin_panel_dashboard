// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_container.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_textfield.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/latest_transaction.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/latest_transaction_listview.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/quick_invoice_form.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/quick_invoice_header.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/title_textfield.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransaction(),

        Divider(height: 48,
        color: Color(0xFFF1F1F1),),

        QuickInvoiceForm()
      ],
    ));
  }
}
