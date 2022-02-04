import 'dart:convert';
Employee employeeNameFromJson(String str) => Employee.fromJson(json.decode(str));
String employeeNameToJson(Employee data) => json.encode(data.toJson());
class Employee {
  Employee({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.postion,
    required this.salary,
    this.showButtons =false
  });
  int id;
  String fullName;
  String phoneNumber;
  String email;
  String postion;
  double salary;
  bool showButtons;
  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    id: json["id"],
    fullName: json["full_name"],
    phoneNumber: json["phone_number"],
    email: json["email"],
    postion: json["postion"],
    salary: json["salary"],
    showButtons:json["showButtons"] ?? false
  );
  Map<String, dynamic> toJson() => {
    "id": id,
    "full_name": fullName,
    "phone_number": phoneNumber,
    "email": email,
    "postion": postion,
    "salary": salary,
    "showButtons":showButtons
  };

}