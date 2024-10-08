import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/custom_button.dart';
import 'package:responsive_tharwat_samy/presentation/widgets/title_textfield.dart';

class QuickInvoiceForm extends StatefulWidget {
  const QuickInvoiceForm({super.key});

  @override
  State<QuickInvoiceForm> createState() => _QuickInvoiceFormState();
}

class _QuickInvoiceFormState extends State<QuickInvoiceForm> {
  String selectedCurrency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
                child: TitleTextfield(
              title: 'Customer name',
              hint: 'Type customer name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextfield(
              title: 'Customer Email',
              hint: 'Type customer email',
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextfield(
              title: 'Item name',
              hint: 'Type customer name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Item amount",
                  style: AppStyles.styleMedium16(context),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(12)),
                  child: DropdownButton<String>(
                      underline: SizedBox.shrink(),
                      value: selectedCurrency,
                      items: <String>['USD', 'EUR', 'GBP', 'EGP']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: AppStyles.styleRegular16(context)
                                .copyWith(color: Color(0xFFAAAAAA)),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCurrency = newValue!;
                        });
                      }),
                )
              ],
            ))
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: const [
            Expanded(
                child: CustomButton(
                    title: 'Add more details', color: Colors.white)),

            SizedBox(
              width: 24,
            ),
            
            Expanded(
                child:
                    CustomButton(title: 'Send Money', color: Color(0xFF4EB7F2)))
          ],
        )
      ],
    );
  }
}
