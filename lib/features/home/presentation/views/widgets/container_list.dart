import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utlis/images.dart';
import '../../../../../core/utlis/styles.dart';

class ContainerList extends StatelessWidget {
  const ContainerList({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text(
            title,
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
    );
  }
}