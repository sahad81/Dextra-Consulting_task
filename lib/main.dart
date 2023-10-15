import 'package:dextra_consulting_task/api/getdata.dart';
import 'package:dextra_consulting_task/helper/route_helper.dart';
import 'package:dextra_consulting_task/util/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dextra_consulting_task/helper/lazy_initilization.dart' as d;

void main() async {
  d.init();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.appame,
      getPages: RouteHelper.routes,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteHelper.splash,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
    );
  }
}
