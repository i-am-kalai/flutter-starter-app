// packages
import 'dart:async';
import 'package:flutter/material.dart';

// widgets
import 'package:starter_app/components/common_place_holder.dart';

// Constants
import 'package:starter_app/constants/routes/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, AppRoutes.HOME_SCREEN);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPlaceHolder("Splash Screen"),
    );
  }
}
