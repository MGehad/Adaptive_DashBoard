class AllExpensesItemModel {
  final String title;
  final String svgImage;
  final String date;
  final String price;

  const AllExpensesItemModel(
      {required this.date,
      required this.price,
      required this.title,
      required this.svgImage});
}
