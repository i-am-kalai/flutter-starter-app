import 'package:economy_app/constants/routes/index.dart';
import 'package:flutter/material.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({Key? key}) : super(key: key);

  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Colors.red,
        child: new Center(
          child: new Text(
            "Tutorial screen",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: new Icon(Icons.forward),
        onPressed: () {
          Navigator.pushReplacementNamed(context, AppRoutes.HOME_SCREEN);
        },
      ),
    );
  }
}
