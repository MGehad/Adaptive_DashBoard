import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'all_expenses.dart';
import 'custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 3, child: CustomDrawer()),
        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const AllExpenses(),
                const SizedBox(height: 24.0),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
        const Expanded(flex: 6, child: SizedBox()),
      ],
    );
  }
}
