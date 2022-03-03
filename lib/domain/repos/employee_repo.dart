import 'package:employeetracker/domain/entities/employee.dart';

abstract class EmployeeRepo {
  Future<List<Employee>> getEmployeeList();
  Future<Employee> getEmployee(int employeeId);
  Future<void> updateEmployee(int employeeId, Employee item);
  Future<void> addEmployee(String name, String role, int dateOfJoining);
  Future<void> deleteEmployee(int employeeId);
}