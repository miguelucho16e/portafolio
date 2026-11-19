import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/developer_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String developer = '/developer';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      developer: (context) => const DeveloperScreen(),
    };
  }
}