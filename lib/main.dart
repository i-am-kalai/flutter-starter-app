import 'package:economy_app/routes.dart';
import 'package:economy_app/screens/splash/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, WidgetBuilder> routes = {
      SPLASH_SCREEN: (context) => SplashScreen(),
      HOME_SCREEN: (context) => MyHomePage(title: "Home")
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
      initialRoute: SPLASH_SCREEN,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: new Color(0xFFE74C3C),
        body: new Center(
          child: new Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
