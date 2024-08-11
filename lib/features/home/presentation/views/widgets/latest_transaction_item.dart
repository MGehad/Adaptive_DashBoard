import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utlis/styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({
    super.key,
    required this.name,
    required this.email,
    required this.svgImage,
  });

  final String name;
  final String email;
  final String svgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(.08),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          SvgPicture.asset(
            svgImage,
            height: 48,
            width: 48,
          ),
          const SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: Styles.textStyleSemiBold16,
              ),
              Text(
                email,
                style: Styles.textStyleRegular12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
