import '../../../../utils/tools/file_importers.dart';

class CaruselWidget extends StatelessWidget {
  List images;
  CaruselWidget({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        viewportFraction: 1.0,
        height: heightMediaQuery(context) * 0.33,
        autoPlay: true,
        physics: const BouncingScrollPhysics(),
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 3000),
        autoPlayCurve: Curves.fastOutSlowIn,
        showIndicator: true,
        slideIndicator: CircularSlideIndicator(),
      ),
      items: images.map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      i,
                      fit: BoxFit.cover,
                    )),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
