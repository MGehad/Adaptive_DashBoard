import 'package:adaptive_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'all_expenses_header.dart';
import 'all_expenses_item.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          Row(
              children: allExpensesItemModels.asMap().entries.map(
            (e) {
              if (e.key == 1) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedItem != e.key) selectedItem = e.key;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: AllExpensesItem(
                        model: e.value,
                        isActive: selectedItem == e.key,
                      ),
                    ),
                  ),
                );
              } else {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedItem != e.key) selectedItem = e.key;
                      });
                    },
                    child: AllExpensesItem(
                      model: e.value,
                      isActive: selectedItem == e.key,
                    ),
                  ),
                );
              }
            },
          ).toList()),
        ],
      ),
    );
  }
}
