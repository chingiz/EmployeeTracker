import 'package:employeetracker/domain/entities/employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'home_state.dart';

class MyHomePage extends StatefulWidget {
  final HomeState homeState;

  const MyHomePage({Key? key, required this.homeState}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var employeeList = widget.homeState.employeeList;
    return Observer(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Employee Tracker"),
          ),
          body: Center(
            child: widget.homeState.isLoading
                ? const Text("Loading")
                : Container(
                    color: Colors.amber,
                    child: ListView.builder(
                      itemCount: employeeList.length,
                      itemBuilder: (_, index) {
                        return ListTile(
                          title: Text(employeeList[index].name),
                          subtitle: Text(employeeList[index].role),
                          trailing: Text(employeeList[index].dateOfJoining),
                        );
                      },
                    ),
                  ),
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Add employee',
            onPressed: () {
              showAddEmployeeDialog();
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }

  void showAddEmployeeDialog() {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _nameEditingController =
        TextEditingController();
    final TextEditingController _roleEditingController =
        TextEditingController();
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _nameEditingController,
                      validator: (value) {
                        return value!.isNotEmpty ? null : "Enter any text";
                      },
                      decoration:
                          const InputDecoration(hintText: "Employee Name"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _roleEditingController,
                      validator: (value) {
                        return value!.isNotEmpty ? null : "Enter any text";
                      },
                      decoration:
                          const InputDecoration(hintText: "Employee Role"),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 3, 5),
                            maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: const Text(
                        'show date time picker',
                        style: TextStyle(color: Colors.blue),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      child: const Text("Add employee"),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          widget.homeState.addEmployee(
                              _nameEditingController.text,
                              _roleEditingController.text,
                              1);
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
