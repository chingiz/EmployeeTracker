import 'package:employeetracker/data/services/sqlite/sqlite_service.dart';
import 'package:employeetracker/domain/entities/employee.dart';
import 'package:employeetracker/data/entities/employee_dto.dart';
import 'package:employeetracker/domain/repos/employee_repo.dart';

class EmployeeRepoImpl extends EmployeeRepo {
  final SqliteService _sqliteService;

  EmployeeRepoImpl(this._sqliteService);

  @override
  Future<void> addEmployee(EmployeeDTO employee) async {
    await _sqliteService.addEmployee(employee);
  }

  @override
  Future<void> deleteEmployee(int employeeId) async {
    await _sqliteService.deleteEmployee(employeeId);
  }

  @override
  Future<Employee> getEmployee(int employeeId) async {
    final res = await _sqliteService.getEmployee(employeeId);
    return res!.map((e) => e.toModel()).toList().single;
  }

  @override
  Future<List<Employee>> getEmployeeList() async {
    final res = await _sqliteService.getEmployeeList();
    return res!.map((e) => e.toModel()).toList();
  }

  @override
  Future<void> updateEmployee(int employeeId, EmployeeDTO item) async {
    final res = await _sqliteService.updateEmployee(employeeId, item);
  }
}
