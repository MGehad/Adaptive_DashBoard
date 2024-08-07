import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utlis/images.dart';
import '../../../../../core/utlis/styles.dart';

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
          style: Styles.textStyleSemiBold20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: const Color(0xffF1F1F1),),),
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: Styles.textStyleSemiBold16,
              ),
              const SizedBox(
                width: 18.0,
              ),
              SvgPicture.asset(
                Images.imagesArrowDown,
                height: 24,
                width: 24,
              )
            ],
          ),
        )
      ],
    );
  }
}
