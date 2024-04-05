import 'package:ussd_tm/utils/tools/file_importers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: heightMediaQuery(context),
          width: widthMediaQuery(context),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                 TabBar(
                  tabs: [
                  Tab(child: Image.asset(AppImages.gerekLogo, width: heightMediaQuery(context) *0.11,),),
                  Tab(text: 'Sazlamalar',),
                ],),
                Expanded(
                  child: TabBarView(children: [
                    CompanyBox(company: companies[0]),
                    Container(color: Colors.yellow,),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
