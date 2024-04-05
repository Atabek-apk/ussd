import 'package:ussd_tm/utils/tools/file_importers.dart';

void showInfoTarif(context, CompanyModel company, index) {
  TarifModel tarif = company.tarifs[index];
  showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(12),
          width: widthMediaQuery(context),
          height: heightMediaQuery(context) * 0.36,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppImages.gerekLogo,
                    width: widthMediaQuery(context) * 0.2,
                  ),
                  SizedBox(
                    height: heightMediaQuery(context) * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: heightMediaQuery(context) * 0.04),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tarifyň ady:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.blue.shade300),
                            ),
                            Text(
                              '${tarif.name}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.blue.shade300),
                            ),
                          ],
                        ),
                        TarifInfoWidget(
                            title: 'Minut', subtitle: '${tarif.minut}'),
                        TarifInfoWidget(
                            title: 'SMS', subtitle: '1${tarif.sms}'),
                        TarifInfoWidget(
                            title: 'Internet', subtitle: '${tarif.mb}'),
                      ],
                    ),
                  ),
                ],
              ),
              ZoomTapAnimation(
                onTap: () async {
                  await FlutterPhoneDirectCaller.callNumber(tarif.ussd);
                  Navigator.pop(context);
                  AnimatedSnackBar(
                      duration: Duration(seconds: 5),
                      builder: (context) => AppSnackBar(
                          text: 'Hyzmat ugradyldy',
                          icon: AppImages.gerekLogo)).show(context);
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: heightMediaQuery(context) * 0.07,
                  width: widthMediaQuery(context),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'Birikmek - ${tarif.price} TMT',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      });
}
