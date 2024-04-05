import 'package:ussd_tm/utils/tools/file_importers.dart';

class CompanyBox extends StatelessWidget {
  CompanyModel company;
  CompanyBox({required this.company, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightMediaQuery(context) * 0.9,
      child: Column(
        children: [
          CaruselWidget(
            images: company.images,
          ),
          const SizedBox(height: 5),
          ...List.generate(
              menus.length,
              (index) => MenuWidget(
                  onTap: () async {
                    if (index < 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CollectionsPag(
                              company: company, isTarif: index == 0),
                        ),
                      );
                    } else {
                      String ussd ='';
                      switch(index){
                        case 2:
                          ussd = company.balancedetectorCode;break;
                        case 3:
                          ussd = company.packagedetectorCode;break;
                        case 4:
                          ussd = company.tarifdetectorCode;break;
                      }
                      await FlutterPhoneDirectCaller.callNumber(ussd);
                      // ignore: use_build_context_synchronously
                      AnimatedSnackBar(
                        snackBarStrategy: RemoveSnackBarStrategy(),
                          duration: const Duration(seconds: 5),
                          builder: (context) => const AppSnackBar(
                              text: 'Hyzmat ugradyldy',
                              icon: AppImages.gerekLogo)).show(context);
                    }
                  },
                  menu: menus[index])),
        ],
      ),
    );
  }
}
