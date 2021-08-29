// packages
import 'package:flutter/material.dart';

// Widgets
import 'package:economy_app/components/common_place_holder.dart';

// constants
import 'package:economy_app/constants/routes/index.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({Key? key}) : super(key: key);

  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: new CommonPlaceHolder("Tutorial"),
      floatingActionButton: FloatingActionButton(
        child: new Icon(Icons.forward),
        onPressed: () {
          Navigator.pushReplacementNamed(context, AppRoutes.HOME_SCREEN);
        },
      ),
    );
  }
}
