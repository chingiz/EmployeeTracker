import 'package:employeetracker/data/entities/employee_dto.dart';
import 'package:employeetracker/data/services/sqlite/sqlite_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

class SqliteService {
  Future<List<EmployeeDTO>?> getEmployeeList() async {
    final Database _db = await SqliteClient().initializeDB();
    final List<Map<String, Object?>> queryResult =
        await _db.query('Employees');
    return queryResult.map((e) => EmployeeDTO.fromMap(e)).toList();
  }

  Future<List<EmployeeDTO>?> getEmployee(int id) async {
    final Database _db = await SqliteClient().initializeDB();
    final List<Map<String, Object?>> queryResult = await _db.query('Employee', where: "emp_id = ?", whereArgs: [id]);
    return queryResult.map((e) => EmployeeDTO.fromMap(e)).toList();
  }

  Future<void> updateEmployee(int id, EmployeeDTO employeeDTO) async {
    final Database _db = await SqliteClient().initializeDB();
    await _db.update('Employees', employeeDTO.toMap(), where: "emp_id = ?", whereArgs: [id]);
  }

  Future<void> addEmployee(EmployeeDTO employeeDTO) async {
    final Database _db = await SqliteClient().initializeDB();
    await _db.insert('Employees', employeeDTO.toMap(), conflictAlgorithm: ConflictAlgorithm.ignore);
  }

  Future<void> deleteEmployee(int id) async {
    final Database _db = await SqliteClient().initializeDB();
    try {
      await _db.delete('Employees', where: "emp_id = ?", whereArgs: [id]);
    } catch (e) {
      debugPrint("Something went wrong when deleting item: $e");
    }
  }
}