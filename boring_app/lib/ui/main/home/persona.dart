import 'package:boring_app/models/user.dart';
import 'package:boring_app/ui/common/avatar.dart';
import 'package:flutter/material.dart';

class Persona extends StatelessWidget {
  Persona({@required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment(0, 0), //stretch
      padding: EdgeInsets.only(top: 12.5, bottom: 12.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Avatar(),
          Text(
            'Катенька',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: Colors.white),
          ),
          Text('Милашка',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.white))
        ],
      ),
    );
  }
}
