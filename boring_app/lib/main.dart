import 'package:boring_app/models/message.dart';
import 'package:boring_app/ui/auth/camera.dart';
import 'package:boring_app/ui/main/home/home.dart';
import 'package:boring_app/ui/main/messages/message_list.dart';
import 'package:flutter/material.dart';
import 'package:boring_app/stores/stores_manager.dart';

void main() {
  StoresManager().init();
  StoresManager().msg.addMessage(Message('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus ornare augue vel facilisis'));
  StoresManager().msg.addMessage(Message('Praesent a lorem vel nibh ornare bibendum. Nulla quis est massa.'));
  StoresManager().msg.addMessage(Message('Pellentesque condimentum ligula neque, nec accumsan purus aliquet et. Fusce fringilla nunc era.'));



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => CameraScreen(),
        '/home': (context) => HomeScreen(),
        '/messages': (context) => MessageList(),
      },
    );
  }
}



//flutter packages pub run build_runner watch