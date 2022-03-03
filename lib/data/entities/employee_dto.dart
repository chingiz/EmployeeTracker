import 'package:employeetracker/domain/entities/employee.dart';

class EmployeeDTO {
  late String name;
  late String role;
  late int dateOfJoining;

  EmployeeDTO(
      {required this.name, required this.role, required this.dateOfJoining});

  EmployeeDTO.fromMap(Map<String, dynamic> item)
      :
        name = item["name"],
        role = item["role"],
        dateOfJoining = item["date_of_joining"];

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['role'] = role;
    data['date_of_joining'] = dateOfJoining;
    return data;
  }
}

extension EmployeeMapper on EmployeeDTO {
  Employee toModel() {
    return Employee(name: name, role: role, dateOfJoining: dateOfJoining.toString());
  }
}