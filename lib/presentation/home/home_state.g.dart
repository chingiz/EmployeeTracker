// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeState on HomeStateBase, Store {
  final _$isLoadingAtom = Atom(name: 'HomeStateBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$employeeListAtom = Atom(name: 'HomeStateBase.employeeList');

  @override
  List<Employee> get employeeList {
    _$employeeListAtom.reportRead();
    return super.employeeList;
  }

  @override
  set employeeList(List<Employee> value) {
    _$employeeListAtom.reportWrite(value, super.employeeList, () {
      super.employeeList = value;
    });
  }

  final _$getEmployeeListAsyncAction =
      AsyncAction('HomeStateBase.getEmployeeList');

  @override
  Future<void> getEmployeeList() {
    return _$getEmployeeListAsyncAction.run(() => super.getEmployeeList());
  }

  final _$addEmployeeAsyncAction = AsyncAction('HomeStateBase.addEmployee');

  @override
  Future<void> addEmployee(String name, String role, int dateOfJoining) {
    return _$addEmployeeAsyncAction
        .run(() => super.addEmployee(name, role, dateOfJoining));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
employeeList: ${employeeList}
    ''';
  }
}
