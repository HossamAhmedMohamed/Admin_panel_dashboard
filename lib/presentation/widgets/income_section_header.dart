import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/constants/app_style.dart';

class IncomeSectionHeader extends StatefulWidget {
  const IncomeSectionHeader({super.key});

  @override
  State<IncomeSectionHeader> createState() => _IncomeSectionHeaderState();
}

class _IncomeSectionHeaderState extends State<IncomeSectionHeader> {
  String selectedCurrency = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Income",
              style: AppStyles.styleSemiBold20(context),),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12 ),
                decoration: ShapeDecoration(
                  color: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(width: 1 , color: Color(0xFFF1F1F1))
                )),
                child: DropdownButton<String>(
                      underline: SizedBox.shrink(),
                      value: selectedCurrency,
                      items: <String>['Monthly', 'Daily', 'Yearly']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: AppStyles.styleMedium16(context)
                                .copyWith(color: Color(0xFF064061)),
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
          );
  }
}
