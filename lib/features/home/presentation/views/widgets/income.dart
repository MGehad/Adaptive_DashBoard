import 'package:adaptive_dashboard/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'chart_items.dart';
import 'income_chart.dart';
import 'income_header.dart';

class Income extends StatelessWidget {
  const Income({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const IncomeHeader(),
          const SizedBox(height: 16.0),
          const SizedBox(
            height: 120.0,
            child: Row(
              children: [
                Expanded(flex: 4, child: IncomeChart()),
                SizedBox(width: 40.0),
                Expanded(flex: 9, child: ChartItems())
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: Divider(color: Color(0xffF1F1F1))),
          Center(
            child: Text(
              "See detail",
              style: Styles.textStyleSemiBold16(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          )
        ],
      ),
    );
  }
}
