
import 'package:dextra_consulting_task/model/details_model.dart';
import 'package:dextra_consulting_task/util/dimensions.dart';
import 'package:dextra_consulting_task/util/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<EmployeDetaisl> employee;
  String age;

  HomeScreen({super.key, required this.employee, required this.age});

  @override
  Widget build(BuildContext context) {
    employee.sort((a, b) => (a.employeeAge ?? 0).compareTo(b.employeeAge ?? 0));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "Employees Age below ${age}",
      
            style: robotoRegular.copyWith(color: Theme.of(context).cardColor),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Name',style: robotoMedium), Text('Age',style: robotoMedium,)],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: employee.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(employee[index].employeeName ?? ''),
                    trailing:
                        Text(employee[index].employeeAge.toString() ?? ''),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
