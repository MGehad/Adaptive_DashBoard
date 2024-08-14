import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'my_card_and_transaction_history_section_and_income.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 6, child: CustomDrawer()),
        Expanded(flex: 15, child: AllExpensesAndQuickInvoiceSection()),
        Expanded(
            flex: 11, child: MyCardAndTransactionHistorySectionAndIncome()),
      ],
    );
  }
}
