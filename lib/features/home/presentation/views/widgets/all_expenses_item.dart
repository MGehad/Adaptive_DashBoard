import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utlis/styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.title,
    required this.svgImage,
    this.color,
  });

  final String title;
  final String svgImage;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: const Color(0xffF1F1F1),
          ),
          color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xffFAFAFA).withOpacity(.2),
                maxRadius: 30,
                child: SvgPicture.asset(
                  svgImage,
                  color: color == null ? const Color(0xff4EB7F2) : Colors.white,
                  width: 32,
                  height: 32,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: color == null ? const Color(0xff064061) : Colors.white,
                size: 24,
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            title,
            style: Styles.textStyleSemiBold16.copyWith(
                color: color == null ? const Color(0xff064061) : Colors.white),
          ),
          Text(
            "April 2022",
            style: Styles.textStyleRegular14.copyWith(
              color: color == null ? const Color(0xffAAAAAA) : Colors.white,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            "\$20,129",
            style: Styles.textStyleSemiBold24.copyWith(
              color: color == null ? const Color(0xff4EB7F2) : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
