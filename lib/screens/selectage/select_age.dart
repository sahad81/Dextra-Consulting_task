import 'package:dextra_consulting_task/controller/home_controler.dart';
import 'package:dextra_consulting_task/screens/home_screen.dart';
import 'package:dextra_consulting_task/screens/selectage/widget/selection_widget.dart';
import 'package:dextra_consulting_task/util/dimensions.dart';
import 'package:dextra_consulting_task/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class SelectAge extends StatefulWidget {
  const SelectAge({super.key});

  @override
  State<SelectAge> createState() => _SelectAgeState();
}

class _SelectAgeState extends State<SelectAge> {
  @override
  void initState() {
    Get.find<HomeController>().getAllEmployees();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Select Age",
          style: robotoBold.copyWith(
              color: Theme.of(context).cardColor,
              fontSize: Dimensions.fontSizeLarge),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GetBuilder<HomeController>(builder: (controller) {
          return controller.loding
              ? CircularProgressIndicator()
              : controller.erorr
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("NO Internet",style: robotoBlack.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                      ElevatedButton(onPressed: () =>  Get.find<HomeController>().getAllEmployees(),
                       child: Text('Retry'))
                    ],
                  )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Selectionbtn(
                          title: 'below 30',
                          onPressed: () {
                            Get.to(HomeScreen(
                              employee: controller.below30,
                              age: '30',
                            ));
                          },
                        ),
                        Selectionbtn(
                          title: 'below 40',
                          onPressed: () {
                            Get.to(HomeScreen(
                              employee: controller.below40,
                              age: '40',
                            ));
                          },
                        ),
                        Selectionbtn(
                          title: 'below 50',
                          onPressed: () {
                            Get.to(HomeScreen(
                              employee: controller.below50,
                              age: "50",
                            ));
                          },
                        ),
                        Selectionbtn(
                          title: 'below 60',
                          onPressed: () {
                            Get.to(HomeScreen(
                              employee: controller.below60,
                              age: '60',
                            ));
                          },
                        )
                      ],
                    );
        }),
      ),
    );
  }
}
