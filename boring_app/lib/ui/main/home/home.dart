import 'package:boring_app/models/user.dart';
import 'package:boring_app/stores/stores_manager.dart';
import 'package:boring_app/ui/common/app_background.dart';
import 'package:boring_app/ui/main/home/persona.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = StoresManager().auth.user;

    return Scaffold(
      body: AppBackground(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Persona(user: user),
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Color(0xFFA5A5A5),
                    alignment: Alignment(20,20),
                  ),
                  Text('test')
                ],
              ),
            ),

//            RaisedButton(
//              child: Text('Messages'),
//              onPressed: () {
//                Navigator.pushNamed(context, '/messages');
//              },
//            ),
          ],
        ),
      ),
    );
  }
}
