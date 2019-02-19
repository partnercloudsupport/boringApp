import 'package:boring_app/models/message.dart';
import 'package:flutter/material.dart';

class ViewMessage extends StatelessWidget {

  ViewMessage({@required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          message.text,
          overflow: TextOverflow.ellipsis,),
      ),
      body: Container(
        child: Text(message.text),
      ),
    );
  }

} 