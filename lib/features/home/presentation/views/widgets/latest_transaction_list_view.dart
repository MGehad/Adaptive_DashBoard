import 'package:flutter/material.dart';

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
        LatestTransactionItem(),
        SizedBox(
          width: 12,
        ),
        LatestTransactionItem(),
        SizedBox(
          width: 12,
        ),
        LatestTransactionItem(),
        SizedBox(
          width: 12,
        ),
        LatestTransactionItem()
      ],
    );
  }
}
