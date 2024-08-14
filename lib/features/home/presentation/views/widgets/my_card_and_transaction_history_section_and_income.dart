import 'package:flutter/material.dart';

import 'income.dart';
import 'my_card_and_transaction_history_section.dart';

class MyCardAndTransactionHistorySectionAndIncome extends StatelessWidget {
  const MyCardAndTransactionHistorySectionAndIncome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.0, right: 30.0),
        child: Column(
          children: [
            MyCardAndTransactionHistorySection(),
            SizedBox(height: 24.0),
            Income(),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
