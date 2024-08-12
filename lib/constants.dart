import 'core/models/all_expenses_item_model.dart';
import 'core/models/card_model.dart';
import 'core/models/drawer_item_model.dart';
import 'core/models/user_info_model.dart';
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
List<UserInfoModel> userInfoModels = [
  UserInfoModel(
      svgImage: Images.imagesAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail"),
  UserInfoModel(
      svgImage: Images.imagesAvatar2,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com"),
  UserInfoModel(
      svgImage: Images.imagesAvatar3,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail"),
];
List<CardModel> cardModels = [
  CardModel(
      name: "Syah Bandi",
      cardDate: "12/25",
      cardNumber: "0918 8124 0042 8129",
      cardPassword: "124"),
  CardModel(
      name: "Mohamed Gehad",
      cardDate: "04/27",
      cardNumber: "0918 8177 0002 8772",
      cardPassword: "374"),
  CardModel(
      name: "Ahmed Gehad",
      cardDate: "06/28",
      cardNumber: "0918 7254 0442 8079",
      cardPassword: "907")
];
