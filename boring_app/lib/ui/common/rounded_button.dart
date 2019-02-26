import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({@required this.title, @required this.onPress});

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 279,
      height: 56,
      buttonColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28)),
      child: RaisedButton(
        onPressed: () {
          this.onPress();
        },
        child: Text(
          this.title.toUpperCase(),
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 94, 114, 224)),
        ),
      ),
    );
  }
}