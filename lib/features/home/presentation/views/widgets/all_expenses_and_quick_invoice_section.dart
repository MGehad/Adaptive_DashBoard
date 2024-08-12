import 'package:flutter/material.dart';
import 'all_expenses.dart';
import 'quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 24.0),
          Expanded(child: QuickInvoice()),
        ],
      ),
    );
  }
}
