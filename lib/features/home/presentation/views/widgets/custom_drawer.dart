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
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              model: userInfoModels[2],
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            ),
          ),
          const DrawerItemList(items: items),
          const SliverFillRemaining(
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
