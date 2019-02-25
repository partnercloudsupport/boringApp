import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  AppBackground({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.fill)),
          ),
          SafeArea(
            child: Container(
              child: this.child,
            ),
          )
        ],
      ),
    );
  }
}
