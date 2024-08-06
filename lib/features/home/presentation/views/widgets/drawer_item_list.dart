import 'package:flutter/material.dart';
import '../../../../../core/models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return DrawerItem(
            model: items[index],
          );
        },
      ),
    );
  }
}
