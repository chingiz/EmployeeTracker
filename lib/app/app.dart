import 'package:employeetracker/app/config/app_routes.dart';
import 'package:employeetracker/app/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Employee Tracker",
      theme: AppTheme.light,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}