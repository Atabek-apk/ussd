import 'package:ussd_tm/utils/tools/file_importers.dart';

class RouteName {
  static const home = "/home";
  static const internetCollections = "/internetCollections";
}

class AppRouter {
  static Route generateRoute(RouteSettings settings){
    var args = settings.arguments;
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      // case RouteName.internetCollections:
      //   return MaterialPageRoute(builder: (_) => CollectionsPag(company: args as CompanyModel));
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}