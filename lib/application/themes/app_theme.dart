import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
      scaffoldBackgroundColor: const Color(0xFF070417),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF070417),
        selectedItemColor: Color(0xFF66D3D8),
        unselectedItemColor: Color(0xFFFAFAFF),
      ));
}