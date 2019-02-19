import 'package:boring_app/models/message.dart';
import 'package:boring_app/stores/stores_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Messages'),
              onPressed: () {
                Navigator.pushNamed(context, '/messages');
              },
            ),
            RaisedButton(
              child: Text('Add message'),
              onPressed: () {
                StoresManager()
                    .msg
                    .addMessage(Message('Hello, this is new one '));
              },
            )
          ],
        ),
      ),
    );
  }
}
