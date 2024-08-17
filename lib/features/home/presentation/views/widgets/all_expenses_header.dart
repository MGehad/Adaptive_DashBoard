import 'package:flutter/material.dart';
import '../../../../../core/utlis/styles.dart';
import 'container_list.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: Styles.textStyleSemiBold20(context),
        ),
        const ContainerList(title: "Monthly",)
      ],
    );
  }
}


