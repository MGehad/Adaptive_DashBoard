import 'package:adaptive_dashboard/core/utlis/styles.dart';
import 'package:flutter/material.dart';

import 'container_list.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: Styles.textStyleSemiBold20,
        ),
        const ContainerList(title: "Monthly")
      ],
    );
  }
}
