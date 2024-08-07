import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/models/drawer_item_model.dart';
import '../../../../../core/utlis/images.dart';
import 'drawer_item_list.dart';
import 'drawer_unactive_item.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 8.0, bottom: 16.0, top: 24.0),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
              svgImage: Images.imagesAvatar3,
            ),
          ),
          DrawerItemList(items: items),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  DrawerUnActiveItem(
                    model: DrawerItemModel(
                        svgImage: Images.imagesSettings,
                        title: "Setting system"),
                  ),
                  DrawerUnActiveItem(
                    model: DrawerItemModel(
                        svgImage: Images.imagesLogout, title: "Logout account"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
