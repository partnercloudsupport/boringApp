import 'package:boring_app/models/user.dart';
import 'package:boring_app/stores/stores_manager.dart';
import 'package:boring_app/ui/common/app_background.dart';
import 'package:boring_app/ui/main/home/message_button.dart';
import 'package:boring_app/ui/main/home/persona.dart';
import 'package:boring_app/ui/main/home/timeline_events.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = StoresManager().auth.user;

    return Scaffold(
      body: AppBackground(
          child: ListView(
        children: <Widget>[
          Persona(user: user),
          Stack(
            children: <Widget>[

              Column(
                children: <Widget>[
                  Container(child: MessageButton(onTap: () {
                    Navigator.pushNamed(context, '/messages');
                  })),
                  TimelineEvents()
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
