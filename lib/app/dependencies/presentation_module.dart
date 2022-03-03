import 'package:employeetracker/app/dependencies/repo_module.dart';
import 'package:employeetracker/domain/use_cases/add_employee_use_case.dart';
import 'package:employeetracker/domain/use_cases/get_employee_list_usecase.dart';
import 'package:employeetracker/presentation/home/home_state.dart';

class PresentationModule {
  static HomeState homeState() {
    return HomeState(GetEmployeeListUseCase(RepoModule.employeeRepo()), AddEmployeeUseCase(RepoModule.employeeRepo()));
  }
}
