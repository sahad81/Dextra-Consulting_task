
import 'package:dextra_consulting_task/screens/home_screen.dart';
import 'package:dextra_consulting_task/screens/selectage/select_age.dart';
import 'package:dextra_consulting_task/screens/spalsh_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String homescreen = '/home';

    static const String selectage = '/selectage';



  static List<GetPage> routes = [


    GetPage(
      name: selectage,
      page: () => SelectAge(),
    ),

      GetPage(
      name: splash,
      page: () => SplashScreen(),
    ),
  ];
}
