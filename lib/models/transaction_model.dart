class TransactionModel {
  final String title, date, amount;
  final bool isWithdrawal;

  TransactionModel(this.isWithdrawal,
      {required this.title, required this.date, required this.amount});
}
