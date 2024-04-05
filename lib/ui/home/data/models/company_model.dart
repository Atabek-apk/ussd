import 'package:ussd_tm/utils/tools/file_importers.dart';

class CompanyModel {
  final List images;
  final String companyLogo;
  final List<TarifModel> tarifs;
  final List<CollectionModel> internetPakets;
  final String balancedetectorCode;
  final String packagedetectorCode;
  final String tarifdetectorCode;

  CompanyModel(
      {required this.balancedetectorCode,
      required this.packagedetectorCode,
      required this.tarifdetectorCode,
      required this.internetPakets,
      required this.tarifs,
      required this.images,
      required this.companyLogo});
}
