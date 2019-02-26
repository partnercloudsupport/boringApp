import 'package:boring_app/stores/stores_manager.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  final StoresManager stores = StoresManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Camera'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: RaisedButton(
                  child: Text('Back'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
              ),
              flex: 90,
            ),
            Expanded(
                child: Align(
                  child: FlatButton(
                      child: Text('Log in'),
                      textColor: Colors.black,
                      onPressed: () {
                        print("GO TO LOGIN");
                        Navigator.of(context).pushNamed('/login');
                      }),
                ),
                flex: 10)
          ],
        )

//      Center(
//        child: RaisedButton(
//          child: Observer(
//            builder: (_) => Text(
//                stores.authStore.authenticated ? 'Signed in' : 'let me in'),
//          ),
//          onPressed: () {
//            stores.authStore.authenticate();
////            Navigator.pushNamed(context, '/home');
//          },
//        ),
//      ),
        );
  }
}

//********************************
//Check this https://mobx.pub/getting-started#installing-dependencies
//********************************
//Run `flutter packages pub run build_runner watch` to regenerate stores
//********************************
