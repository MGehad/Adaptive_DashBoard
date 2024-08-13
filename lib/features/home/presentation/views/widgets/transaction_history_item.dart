import 'package:flutter/material.dart';

import '../../../../../core/models/transaction_history_model.dart';
import '../../../../../core/utlis/styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transactionHistoryModel,
  });

  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.08),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListTile(
        minVerticalPadding: 0,
        horizontalTitleGap: 0,
        contentPadding: EdgeInsets.zero,
        title: Text(
          transactionHistoryModel.title,
          style:
              Styles.textStyleSemiBold16.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: Styles.textStyleRegular16
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: Styles.textStyleSemiBold20.copyWith(
              color:
                  (transactionHistoryModel.transaction == Transaction.Withdraw)
                      ? const Color(0xffF3735E)
                      : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
