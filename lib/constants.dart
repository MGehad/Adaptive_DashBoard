import 'package:adaptive_dashboard/core/utlis/images.dart';
import 'package:flutter/material.dart';

import 'core/models/all_expenses_item_model.dart';
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
const List<AllExpensesItemModel> allExpensesItemModels = [
  AllExpensesItemModel(
    title: "Balance",
    svgImage: Images.imagesBalance,
  ),
  AllExpensesItemModel(title: "Income", svgImage: Images.imagesIncome),
  AllExpensesItemModel(title: "Expenses", svgImage: Images.imagesExpenses),
];
