import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/models/drawer_item_model.dart';
import '../../../../../core/utlis/styles.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel model;

  const DrawerItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 12),
      leading: SvgPicture.asset(model.svgImage),
      title: Text(
        model.title,
        style: Styles.textStyleRegular16,
      ),
    );
  }
}
