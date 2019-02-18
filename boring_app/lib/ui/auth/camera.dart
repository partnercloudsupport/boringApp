import 'package:boring_app/stores/stores_manager.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  final StoresManager stores = StoresManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Center(
        child: RaisedButton(
          child: Observer(
            builder: (_) => Text(
                stores.auth.authenticated ? 'Signed in' : 'let me in'),
          ),
          onPressed: () {
//            stores.auth.authenticate();
            Navigator.pushNamed(context, '/messages');
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
