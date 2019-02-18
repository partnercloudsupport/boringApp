import 'package:boring_app/stores/stores.manager.dart';
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
                stores.authStore.authenticated ? 'Signed in' : 'let me in'),
          ),
          onPressed: () {
            stores.authStore.authenticate();
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
