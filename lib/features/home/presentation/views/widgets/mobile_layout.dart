import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'my_card_and_transaction_history_section_and_income.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceSection(),
            MyCardAndTransactionHistorySectionAndIncome()
          ],
        ),
      ),
    );
  }
}
