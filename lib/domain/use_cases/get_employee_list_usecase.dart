import 'package:employeetracker/domain/entities/employee.dart';
import 'package:employeetracker/domain/repos/employee_repo.dart';

class GetEmployeeListUseCase {
  final EmployeeRepo _employeeRepo;

  GetEmployeeListUseCase(this._employeeRepo);

  Future<List<Employee>> getEmployeeList() async {
    return await _employeeRepo.getEmployeeList();
  }
}
