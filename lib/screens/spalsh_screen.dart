
import 'package:dextra_consulting_task/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dextra_consulting_task/util/app_constants.dart';
import 'package:dextra_consulting_task/util/styles.dart';
import 'package:dextra_consulting_task/util/dimensions.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Get.find<SplashController>().changeScreen());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppConstants.appame.toUpperCase(),

              style: robotoBold.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontSize: Dimensions.fontSizeOverLargeLarg,
                  letterSpacing: 5),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE,),
          
          ],
        ),
      ),
    );
  }
}
