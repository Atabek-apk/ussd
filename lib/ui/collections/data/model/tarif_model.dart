class TarifModel {
  final String name;
  final String price;
  final String minut;
  final String sms;
  final String mb;
  final String ussd;
  TarifModel(this.name,
      {required this.ussd,
      required this.price,
      required this.minut,
      required this.sms,
      required this.mb});
}
