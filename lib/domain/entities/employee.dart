import 'package:employeetracker/data/entities/employee_dto.dart';

class Employee {
  final String name;
  final String role;
  final String dateOfJoining;

  Employee(
      {required this.name, required this.role, required this.dateOfJoining});
}

extension EmployeeMapper on Employee {
  EmployeeDTO toData() {
    return EmployeeDTO(
        name: name, role: role, dateOfJoining: int.parse(dateOfJoining));
  }
}
