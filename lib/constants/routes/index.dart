import 'package:economy_app/screens/home/index.dart';
import 'package:economy_app/screens/splash/index.dart';
import 'package:flutter/cupertino.dart';

abstract class AppRoutes {
  // routes
  static const String SPLASH_SCREEN = "/splash_screen";
  static const String HOME_SCREEN = "/home_screen";

  // initial route
  static const String INITIAL_ROUTE = SPLASH_SCREEN;

  // routes mapped to widget
  static final Map<String, WidgetBuilder> routes = {
    SPLASH_SCREEN: (context) => SplashScreen(),
    HOME_SCREEN: (context) => HomeScreen()
  };
}
