class CollectionModel {
  final String amount;
  final String price;
  final String expireDate;
  final String ussd;
  CollectionModel(this.amount,
      {required this.price, required this.expireDate, required this.ussd});
}
