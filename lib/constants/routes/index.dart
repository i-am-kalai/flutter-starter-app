// packages
import 'package:flutter/material.dart';

// Widgets
import 'package:economy_app/screens/home/index.dart';
import 'package:economy_app/screens/splash/index.dart';
import 'package:economy_app/screens/tutorial/index.dart';

abstract class AppRoutes {
  // routes
  static const String SPLASH_SCREEN = "/splash_screen";
  static const String HOME_SCREEN = "/home_screen";
  static const String TUTORIAL_SCREEN = "/tutorial_screen";

  // initial route
  static const String INITIAL_ROUTE = TUTORIAL_SCREEN;

  // routes mapped to widget
  static final Map<String, WidgetBuilder> routes = {
    TUTORIAL_SCREEN: (context) => TutorialScreen(),
    SPLASH_SCREEN: (context) => SplashScreen(),
    HOME_SCREEN: (context) => HomeScreen()
  };
}
