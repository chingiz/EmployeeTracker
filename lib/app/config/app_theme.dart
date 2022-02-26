import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryTextTheme: const TextTheme(
        headline6: TextStyle(
            color: Color(0xFF343836),
            fontWeight: FontWeight.w500,
            fontSize: 16),
      ),
      primaryIconTheme: const IconThemeData(color: Colors.black),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}