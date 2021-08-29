// packages
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Widgets
import 'package:economy_app/screens/home/index.dart';
import 'package:economy_app/screens/splash/index.dart';
import 'package:economy_app/screens/tutorial/index.dart';

// Constants
import 'package:economy_app/constants/keys.dart';

class InitiatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder:
            (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
          bool alredayRun =
              snapshot.data?.getBool(SHARED_PREFERENCES_KEY) ?? false;
          if (alredayRun) {
            return SplashScreen();
          } else {
            snapshot.data?.setBool(SHARED_PREFERENCES_KEY, true);
            return TutorialScreen();
          }
        });
  }
}

abstract class AppRoutes {
  // routes
  static const String SPLASH_SCREEN = "/splash_screen";
  static const String HOME_SCREEN = "/home_screen";
  static const String TUTORIAL_SCREEN = "/tutorial_screen";
  static const String INITIATOR_SCREEN = "/initiator_screen";

  // initial route
  static const String INITIAL_ROUTE = INITIATOR_SCREEN;

  // routes mapped to widget
  static final Map<String, WidgetBuilder> routes = {
    INITIATOR_SCREEN: (context) => InitiatorScreen(),
    TUTORIAL_SCREEN: (context) => TutorialScreen(),
    SPLASH_SCREEN: (context) => SplashScreen(),
    HOME_SCREEN: (context) => HomeScreen()
  };
}
