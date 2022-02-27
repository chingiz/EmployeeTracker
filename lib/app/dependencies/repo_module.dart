import 'package:employeetracker/data/repos/employee_repo_impl.dart';
import 'package:employeetracker/data/services/sqlite/sqlite_service.dart';
import 'package:employeetracker/domain/repos/employee_repo.dart';

class RepoModule {
  static late EmployeeRepo _employeeRepo;

  static final SqliteService _sqliteService = SqliteService();

  static EmployeeRepo employeeRepo() {
    _employeeRepo = EmployeeRepoImpl(_sqliteService);
    return _employeeRepo;
  }
}