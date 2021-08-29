import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      color: Colors.red,
      child: new Center(
        child: new Text(
          "Splash screen",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ));
  }
}
