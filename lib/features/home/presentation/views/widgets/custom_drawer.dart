import 'package:adaptive_dashboard/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utlis/images.dart';
import 'drawer_item_list.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const UserInfoListTile(
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
            svgImage: Images.imagesAvatar3,
          ),
          DrawerItemList(
            items: items,
          )
        ],
      ),
    );
  }
}
