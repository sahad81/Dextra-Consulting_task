import 'dart:convert';


class DetailsModel {
     String? status;
     List<EmployeDetaisl>? data;
     String? message;

    DetailsModel({
        this.status,
        this.data,
        this.message,
    });

    factory DetailsModel.fromJson(Map<String, dynamic> json) => DetailsModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<EmployeDetaisl>.from(json["data"]!.map((x) => EmployeDetaisl.fromJson(x))),
        message: json["message"],
    );

}

class EmployeDetaisl {
     int? id;
     String? employeeName;
     int? employeeSalary;
     int? employeeAge;
     String? profileImage;

    EmployeDetaisl({
        this.id,
        this.employeeName,
        this.employeeSalary,
        this.employeeAge,
        this.profileImage,
    });

    factory EmployeDetaisl.fromJson(Map<String, dynamic> json) => EmployeDetaisl(
        id: json["id"],
        employeeName: json["employee_name"],
        employeeSalary: json["employee_salary"],
        employeeAge: json["employee_age"],
        profileImage: json["profile_image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "employee_name": employeeName,
        "employee_salary": employeeSalary,
        "employee_age": employeeAge,
        "profile_image": profileImage,
    };
}