import '../../../utils/tools/file_importers.dart';

class CollectionsPag extends StatelessWidget {
  CompanyModel company;
  bool isTarif;
  CollectionsPag({Key? key, required this.company, required this.isTarif})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          company.companyLogo,
          width: widthMediaQuery(context) * 0.2,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          if (isTarif)
            ...List.generate(
              company.tarifs.length,
              (index) => TarifWidget(
                company: company,
                index: index,
              ),
            ),
          if (!isTarif)
            ...List.generate(
              company.internetPakets.length,
              (index) => CollectionWidget(
                  company: company,
                  index: index),
            ),
        ],
      ),
    );
  }
}
