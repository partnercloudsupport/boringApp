import 'package:boring_app/stores/auth.store.dart';
import 'package:boring_app/ui/main/home.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

final store = AuthStore();

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Center(
        child: RaisedButton(
          child: Observer(
            builder: (_) =>
                Text(store.authenticated ? 'Signed in' : 'let me in'),
          ),
          onPressed: () {
            store.authenticate();
//            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
    );
  }
}



//********************************
//Check this https://mobx.pub/getting-started#installing-dependencies
//********************************
//Run `flutter packages pub run build_runner watch` to regenerate stores
//********************************