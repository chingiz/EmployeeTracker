import 'package:employeetracker/domain/entities/employee.dart';
import 'package:employeetracker/domain/use_cases/add_employee_use_case.dart';
import 'package:employeetracker/domain/use_cases/get_employee_list_usecase.dart';
import 'package:mobx/mobx.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  HomeStateBase(this._employeeListUseCase, this._addEmployeeUseCase) {
    getEmployeeList();
  }

  final GetEmployeeListUseCase _employeeListUseCase;
  final AddEmployeeUseCase _addEmployeeUseCase;

  @observable
  bool isLoading = false;

  @observable
  List<Employee> employeeList = [];

  @action
  Future<void> getEmployeeList() async {
    isLoading = true;
    print("Get Employee List");
    employeeList = await _employeeListUseCase.getEmployeeList();
    print("Get Employee List ${employeeList.length}");
    isLoading = false;
  }

  @action
  Future<void> addEmployee(String name, String role, int dateOfJoining) async {
    await _addEmployeeUseCase.addEmployee(name, role, dateOfJoining);
  }
}
