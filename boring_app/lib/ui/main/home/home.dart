import 'package:boring_app/models/user.dart';
import 'package:boring_app/stores/stores_manager.dart';
import 'package:boring_app/ui/main/home/welcome.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    User user = StoresManager().auth.user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Welcome(user: user),

            RaisedButton(
              child: Text('Messages'),
              onPressed: () {
                Navigator.pushNamed(context, '/messages');
              },
            ),

          ],
        ),
      ),
    );
  }
}
