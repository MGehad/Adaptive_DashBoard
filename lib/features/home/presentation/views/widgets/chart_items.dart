import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/models/chart_item_model.dart';
import '../../../../../core/utlis/styles.dart';

class ChartItems extends StatelessWidget {
  const ChartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chartItemModels.length,
      itemBuilder: (context, index) {
        if (index != 3) {
          return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: buildChartItem(chartItemModels[index]));
        }
        return buildChartItem(chartItemModels[index]);
      },
    );
  }

  Row buildChartItem(ChartItemModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: model.color),
            ),
            const SizedBox(width: 12),
            Text(
              model.title,
              style: Styles.textStyleRegular16,
            ),
          ],
        ),
        Text(
          "${model.percentage}%",
          style:
              Styles.textStyleMedium16.copyWith(color: const Color(0xff208CC8)),
        )
      ],
    );
  }
}
