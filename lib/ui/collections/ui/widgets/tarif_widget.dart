

import 'package:ussd_tm/utils/tools/file_importers.dart';

class TarifWidget extends StatelessWidget {
  CompanyModel company;
  int index;
  TarifWidget({Key? key, required this.company, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TarifModel tarif = company.tarifs[index];
    return ZoomTapAnimation(
      onTap: () {
        showInfoTarif(context, company, index);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20.0),
        height: heightMediaQuery(context) * 0.13,
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
              width: widthMediaQuery(context) * 0.45,
              child: Center(
                child: Text(
                  tarif.name,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.blue.shade400),
                ),
              ),
            ),
            Container(
              height: heightMediaQuery(context) * 0.13,
              width: 0.4,
              color: Colors.blue.shade500,
            ),
            SizedBox(
              width: widthMediaQuery(context) * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    tarif.price,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.blue.shade400),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade300),
                      child: SizedBox(
                        height: heightMediaQuery(context) * 0.04,
                        child: const Center(
                          child: Text(
                            'Birikmek',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
