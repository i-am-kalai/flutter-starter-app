// packages
import 'package:flutter/material.dart';

class CommonPlaceHolder extends StatelessWidget {
  final String _textToDisplay;
  final Color color;
  CommonPlaceHolder(this._textToDisplay, {this.color = Colors.red});
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: this.color,
        child: new Center(
          child: new Text(
            this._textToDisplay,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ));
  }
}
