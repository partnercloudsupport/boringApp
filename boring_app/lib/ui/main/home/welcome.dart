import 'package:boring_app/models/user.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Welcome({@required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('Привет, ${this.user.name}'),
    );
  }
}
