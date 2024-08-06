import 'package:flutter/material.dart';
import '../../../../../core/models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.items.length,
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (index != selectedItem) {
                setState(() {
                  selectedItem = index;
                });
              }
            },
            child: DrawerItem(
              model: widget.items[index],
              isActive: index == selectedItem,
            ),
          );
        },
      ),
    );
  }
}
