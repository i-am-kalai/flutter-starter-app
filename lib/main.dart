import 'package:flutter/material.dart';

import 'package:economy_app/routes.dart';
import 'package:economy_app/screens/home/index.dart';
import 'package:economy_app/screens/splash/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, WidgetBuilder> routes = {
      SPLASH_SCREEN: (context) => SplashScreen(),
      HOME_SCREEN: (context) => HomeScreen()
    };

    final MaterialColor primaryColor = Colors.red;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        primarySwatch: primaryColor,
      ),
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      routes: routes,
      initialRoute: HOME_SCREEN,
    );
  }
}
