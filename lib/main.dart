// packages
import 'package:flutter/material.dart';
// constant files
import 'package:starter_app/constants/colors/themes/dark_theme/index.dart';
import 'package:starter_app/constants/colors/themes/light_theme/index.dart';
import 'package:starter_app/constants/routes/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // removed debug label
      debugShowCheckedModeBanner: false,
      // themes
      darkTheme: darkThemeData,
      theme: lightThemeData,
      //routes
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.INITIAL_ROUTE,
    );
  }
}
