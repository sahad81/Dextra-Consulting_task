import 'dart:convert';

import 'package:dextra_consulting_task/api/getdata.dart';
import 'package:dextra_consulting_task/model/details_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart'; // Make sure to import the Apiclint class

// Rest of your imports

class HomeController extends GetxController {
  bool _loding = false;
  bool get loding => _loding;
  bool _erorr = false;
  bool get erorr => _erorr;

  List<EmployeDetaisl> allemployeelist = [];
  List<EmployeDetaisl> below40 = [];
  List<EmployeDetaisl> below30 = [];
  List<EmployeDetaisl> below50 = [];
  List<EmployeDetaisl> below60 = [];

Future<void> getAllEmployees() async {
  try {
;
    _erorr = false;
    _loding = true;

    Response? response = await getData();

    // Check if the response is null (usually indicating no internet)
    if (response == null) {
      _erorr = true;
      _loding = false;
      update();

      return;
    }

    if (response.statusCode == 200) {
      DetailsModel detailsModel =
          DetailsModel.fromJson(jsonDecode(response.body));
      if (detailsModel.status == 'success') {
        allemployeelist = detailsModel.data ?? [];
        filterEmployees();
        _loding = false;
        update();
      } else {
       
        _erorr = true;
        _loding = false;
        update();
      }
    } else {

      _erorr = true;
      _loding = false;
      update();
    }
  } catch (e) {

    _erorr = true;
    _loding = false;
    update();
    print('Error fetching employee data: $e');
  }
}


  void filterEmployees() {
    below30 = allemployeelist
        .where((employee) => employee.employeeAge! < 30)
        .toList();
    below40 = allemployeelist
        .where((employee) => employee.employeeAge! < 40)
        .toList();
    below50 = allemployeelist
        .where((employee) => employee.employeeAge! < 50)
        .toList();
    below60 = allemployeelist
        .where((employee) => employee.employeeAge! < 60)
        .toList();
  }
}
