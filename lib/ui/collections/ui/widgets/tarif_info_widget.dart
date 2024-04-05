import '../../../../utils/tools/file_importers.dart';

class TarifInfoWidget extends StatelessWidget {
  String title;
  String subtitle;
  bool isTarif;
  TarifInfoWidget({this.isTarif=true,required this.title, required this.subtitle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: isTarif == true ? 5: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title:',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.blue.shade300),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.blue.shade300),
          ),
        ],
      ),
    );
  }
}
