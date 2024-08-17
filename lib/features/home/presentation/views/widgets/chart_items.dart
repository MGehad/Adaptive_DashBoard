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
    return Column(
      children: [
        buildChartItem(chartItemModels[3], context),
        const Spacer(),
        buildChartItem(chartItemModels[2], context),
        const Spacer(),
        buildChartItem(chartItemModels[1], context),
        const Spacer(),
        buildChartItem(chartItemModels[0], context),
      ],
    );
  }

  Row buildChartItem(ChartItemModel model, BuildContext context) {
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
              style: Styles.textStyleRegular16(context),
            ),
          ],
        ),
        Text(
          "${model.percentage}%",
          style: Styles.textStyleMedium16(context)
              .copyWith(color: const Color(0xff208CC8)),
        )
      ],
    );
  }
}
