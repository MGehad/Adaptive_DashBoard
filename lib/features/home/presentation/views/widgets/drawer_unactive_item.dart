import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/models/drawer_item_model.dart';
import '../../../../../core/utlis/styles.dart';

class DrawerUnActiveItem extends StatelessWidget {
  const DrawerUnActiveItem({super.key, required this.model});

  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      leading: SvgPicture.asset(
        model.svgImage,
        width: 24,
        fit: BoxFit.fill,
      ),
      title: Text(
        model.title,
        style: Styles.textStyleRegular16,
      ),
    );
  }
}
