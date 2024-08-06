import 'package:flutter/material.dart';
import '../../../../../core/models/drawer_item_model.dart';
import 'drawer_active_item.dart';
import 'drawer_unactive_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel model;
  final bool isActive;

  const DrawerItem({
    super.key,
    required this.model,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return DrawerActiveItem(model: model);
    }
    return DrawerUnActiveItem(model: model);
  }
}
