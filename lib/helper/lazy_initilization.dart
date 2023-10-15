
import 'package:dextra_consulting_task/controller/home_controler.dart';
import 'package:dextra_consulting_task/controller/splash_controller.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future init() async {
 Get.lazyPut(() => SplashController());
  Get.lazyPut(() => HomeController());
}