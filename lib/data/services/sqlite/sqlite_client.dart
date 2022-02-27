import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqliteClient {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'employees.db'),
      onCreate: (database, version) async {
        await database.execute(
            "CREATE TABLE Employees(emp_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, role TEXT NOT NULL, date_of_joining int)");
      },
      version: 1,
    );
  }
}
