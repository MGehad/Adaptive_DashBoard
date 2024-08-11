import 'package:flutter/material.dart';

import '../../../../../core/utlis/images.dart';
import 'latest_transaction_item.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: const [
        LatestTransactionItem(
            svgImage: Images.imagesAvatar1,
            email: "Madraniadi20@gmail",
            name: "Madrani Andi"),
        SizedBox(
          width: 12,
        ),
        LatestTransactionItem(
            svgImage: Images.imagesAvatar2,
            email: "Josh Nunito@gmail.com",
            name: "Josua Nunito"),
        SizedBox(
          width: 12,
        ),
        LatestTransactionItem(
            svgImage: Images.imagesAvatar3,
            email: "Madraniadi20@gmail",
            name: "Madrani Andi"),
      ],
    );
  }
}
