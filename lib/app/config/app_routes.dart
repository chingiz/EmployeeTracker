import 'package:employeetracker/app/dependencies/presentation_module.dart';
import 'package:employeetracker/presentation/home/home.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(
          MyHomePage(
            homeState: PresentationModule.homeState(),
          ),
        );
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
