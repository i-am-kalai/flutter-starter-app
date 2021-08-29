// packages
import 'package:flutter/material.dart';

// Widgets
import 'package:economy_app/components/common_place_holder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonPlaceHolder(
      "Home Screen",
      color: Colors.green,
    ));
  }
}
