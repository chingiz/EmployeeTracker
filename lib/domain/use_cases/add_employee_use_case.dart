import 'package:employeetracker/domain/repos/employee_repo.dart';

class AddEmployeeUseCase {
  final EmployeeRepo _employeeRepo;

  AddEmployeeUseCase(this._employeeRepo);

  Future<void> addEmployee(String name, String role, dateOfJoining) async {
    await _employeeRepo.addEmployee(name, role, dateOfJoining);
  }
}
