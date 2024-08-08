import 'core/models/all_expenses_item_model.dart';
import 'core/models/drawer_item_model.dart';
import 'core/utlis/images.dart';

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
      date: "April 2022",
      price: "\$20,129"),
  AllExpensesItemModel(
      title: "Income",
      svgImage: Images.imagesIncome,
      date: "April 2022",
      price: "\$20,129"),
  AllExpensesItemModel(
      title: "Expenses",
      svgImage: Images.imagesExpenses,
      date: "April 2022",
      price: "\$20,129"),
];
