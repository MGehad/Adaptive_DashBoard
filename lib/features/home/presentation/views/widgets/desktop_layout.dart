import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'all_expenses.dart';
import 'custom_drawer.dart';
import 'quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 3, child: CustomDrawer()),
        Expanded(
          flex: 7,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(height: 24.0),
                Expanded(child: QuickInvoice()),
              ],
            ),
          ),
        ),
        Expanded(flex: 6, child: SizedBox()),
      ],
    );
  }
}


