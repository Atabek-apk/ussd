

import 'package:ussd_tm/utils/tools/file_importers.dart';

class CollectionWidget extends StatelessWidget {
  CompanyModel company;
  int index;
  CollectionWidget({Key? key, required this.company, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionModel internet = company.internetPakets[index];
    return ZoomTapAnimation(
      onTap: () {
        showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),
              ),
            ),
            builder: (context) {
              return Container(
                padding: EdgeInsets.all(12),
                width: widthMediaQuery(context),
                height: heightMediaQuery(context) * 0.30,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Pakedyň ady:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.blue.shade300),
                                  ),
                                  Text(
                                    internet.amount,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.blue.shade300),
                                  ),
                                ],
                              ),
                              TarifInfoWidget(
                                  title: 'Mukdary',
                                  subtitle: '${internet.amount}'),
                              TarifInfoWidget(
                                  title: 'Wagty',
                                  subtitle: '${internet.expireDate}'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ZoomTapAnimation(
                      onTap: () async {
                        await FlutterPhoneDirectCaller.callNumber(
                            internet.ussd);
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
                            'Birikmek - ${internet.price}',
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
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20.0),
        height: heightMediaQuery(context) * 0.12,
        width: widthMediaQuery(context),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.blue.shade300,
                offset: const Offset(0.2, 0.2),
                blurRadius: 5.0,
                spreadRadius: 1.0),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: widthMediaQuery(context) * 0.3,
              child: Center(
                child: Text(
                  internet.amount.replaceFirst(" ", "\n"),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.blue.shade400),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: heightMediaQuery(context) * 0.13,
              width: 0.4,
              color: Colors.blue.shade500,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TarifInfoWidget(
                      title: 'Bahasy',
                      subtitle: internet.price,
                      isTarif: false,
                    ),
                    TarifInfoWidget(
                      title: 'Wagty',
                      subtitle: internet.expireDate,
                      isTarif: false,
                    ),
                    Container(
                      height: 0.5,
                      width: widthMediaQuery(context),
                      color: Colors.blue.shade300,
                    ),
                    Center(
                      child: Text(
                        internet.ussd,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.blue.shade400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
