import 'package:employeetracker/data/entities/employee_dto.dart';
import 'package:employeetracker/domain/entities/employee.dart';

abstract class EmployeeRepo {
  Future<List<Employee>> getEmployeeList();
  Future<Employee> getEmployee(int employeeId);
  Future<void> updateEmployee(int employeeId, EmployeeDTO item);
  Future<void> addEmployee(EmployeeDTO employee);
  Future<void> deleteEmployee(int employeeId);
}