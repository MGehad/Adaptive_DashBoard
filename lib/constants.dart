import 'package:adaptive_dashboard/core/utlis/images.dart';

import 'core/models/drawer_item_model.dart';

const List<DrawerItemModel> items = [
  DrawerItemModel(svgImage: Images.imagesDashboard, title: "Dashboard"),
  DrawerItemModel(
      svgImage: Images.imagesMyTransctions, title: "My Transaction"),
  DrawerItemModel(svgImage: Images.imagesStatistics, title: "Statistics"),
  DrawerItemModel(
      svgImage: Images.imagesWalletAccount, title: "Wallet Account"),
  DrawerItemModel(
      svgImage: Images.imagesMyInvestments, title: "My Investments"),
];
