import 'package:boring_app/ui/auth/camera.dart';
import 'package:boring_app/ui/main/home.dart';
import 'package:flutter/material.dart';
import 'package:boring_app/stores/stores.manager.dart';

void main() {
  StoresManager().init();
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
      },
    );
  }
}
