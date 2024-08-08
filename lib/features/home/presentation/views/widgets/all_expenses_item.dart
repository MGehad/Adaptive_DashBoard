import 'package:flutter/material.dart';
import '../../../../../core/models/all_expenses_item_model.dart';
import 'all_expenses_active_item.dart';
import 'all_expenses_unactive_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.model,
    required this.isActive,
  });

  final AllExpensesItemModel model;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (isActive) return AllExpensesActiveItem(model: model);
    return AllExpensesUnActiveItem(model: model);
  }
}
