import '../../../../utils/tools/file_importers.dart';

class MenuWidget extends StatelessWidget {
  MenuModel menu;
  VoidCallback onTap;
  MenuWidget({Key? key,required this.onTap, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade400,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        width: widthMediaQuery(context),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Image.asset(
                menu.icon,
                width: 24,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              menu.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
