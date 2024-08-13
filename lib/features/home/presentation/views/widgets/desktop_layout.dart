import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'income.dart';
import 'my_card_and_transaction_history_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 6, child: CustomDrawer()),
        Expanded(flex: 15, child: AllExpensesAndQuickInvoiceSection()),
        Expanded(
          flex: 11,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0, right: 30.0),
              child: Column(
                children: [
                  MyCardAndTransactionHistorySection(),
                  SizedBox(height: 24.0),
                  Income(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
