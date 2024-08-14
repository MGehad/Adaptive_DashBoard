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
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IncomeHeader(),
          SizedBox(height: 16.0),
          SizedBox(
            height: 120.0,
            child: Row(
              children: [
                Expanded(flex: 4, child: IncomeChart()),
                SizedBox(width: 40.0),
                Expanded(flex: 9, child: ChartItems())
              ],
            ),
          )
        ],
      ),
    );
  }
}
