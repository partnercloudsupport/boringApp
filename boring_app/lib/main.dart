import 'package:boring_app/data/firestore_repository.dart';
import 'package:boring_app/ui/auth/camera.dart';
import 'package:boring_app/ui/main/home/home.dart';
import 'package:boring_app/ui/main/messages/message_list.dart';
import 'package:flutter/material.dart';
import 'package:boring_app/stores/stores_manager.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() {
  StoresManager().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  MyApp() {
    setupMessaging();
  }

  void setupMessaging() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );

    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));

    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });

    _firebaseMessaging
        .getToken()
        .then((token) => FirestoreRepository().saveToken(StoresManager().auth.user, token))
        .then((id) => StoresManager().auth.user.id = id);
  }

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
        '/view_message': (context) => MessageList(),
      },
    );
  }
}

//flutter packages pub run build_runner watch
