import '../tools/file_importers.dart';

class AppSnackBar extends StatelessWidget {
  final String text;
  final String icon;
  const AppSnackBar({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.blue.shade400),
      ),
      width: widthMediaQuery(context) * 0.95,
      height: heightMediaQuery(context) * 0.07,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              icon,
              width: widthMediaQuery(context) * 0.2,
            ),
            Container(
              width: 1,
              height: heightMediaQuery(context) * 0.9,
              color: Colors.blue.shade800,
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 15, color: Colors.blue.shade500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
