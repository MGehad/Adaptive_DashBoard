import 'package:adaptive_dashboard/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';
import 'transaction_history_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: Styles.textStyleSemiBold20,
            ),
            Text(
              "See all",
              style: Styles.textStyleMedium16
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Text(
          "13 April 2022",
          style:
              Styles.textStyleMedium16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        Column(
          children: List.generate(
            3,
            (index) {
              return TransactionHistoryItem(
                  transactionHistoryModel: transactionHistoryModels[index]);
            },
          ),
        )
      ],
    );
  }
}
