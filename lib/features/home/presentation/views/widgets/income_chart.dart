import 'package:adaptive_dashboard/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData));
  }

  int touchedItem = -1;

  PieChartData get getChartData {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          setState(() {
            touchedItem =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: chartItemModels.asMap().entries.map(
        (e) {
          return PieChartSectionData(
              title: e.value.title,
              color: e.value.color,
              showTitle: false,
              radius: (touchedItem == e.key) ? 35 : 25,
              value: e.value.percentage);
        },
      ).toList(),
    );
  }
}
