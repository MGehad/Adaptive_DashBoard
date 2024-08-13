class TransactionHistoryModel {
  final String title;
  final String date;
  final String amount;
  final Transaction transaction;

  TransactionHistoryModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.transaction});
}

enum Transaction { Withdraw, Deposit }
