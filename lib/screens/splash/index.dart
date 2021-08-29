// packages
import 'package:flutter/material.dart';

// widgets
import 'package:economy_app/components/common_place_holder.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPlaceHolder("Splash Screen"),
    );
  }
}
