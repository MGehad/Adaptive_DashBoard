import 'package:adaptive_dashboard/core/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
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
      child: Column(children: [
        const AllExpensesHeader(),
        const SizedBox(height: 16),
        Row(
          children: [
            buildExpandedItem(allExpensesItemModels[0], 0),
            const SizedBox(width: 8.0),
            buildExpandedItem(allExpensesItemModels[1], 1),
            const SizedBox(width: 8.0),
            buildExpandedItem(allExpensesItemModels[2], 2),
          ],
        ),
      ]),
    );
  }

  Expanded buildExpandedItem(AllExpensesItemModel model, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          updateIndex(index);
        },
        child: AllExpensesItem(
          model: model,
          isActive: selectedItem == index,
        ),
      ),
    );
  }

  void updateIndex(int index) {
    setState(() {
      if (selectedItem != index) {
        selectedItem = index;
      }
    });
  }
}
