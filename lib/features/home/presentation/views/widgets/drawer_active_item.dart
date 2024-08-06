import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/models/drawer_item_model.dart';
import '../../../../../core/utlis/styles.dart';

class DrawerActiveItem extends StatelessWidget {
  final DrawerItemModel model;

  const DrawerActiveItem({super.key, required this.model});

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
        style: Styles.textStyleBold16,
      ),
      trailing: Container(
        color: const Color(0xff4EB7F2),
        width: 4,
      ),
    );
  }
}
