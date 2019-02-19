import 'package:boring_app/models/message.dart';
import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  MessageItem({@required this.message, this.onTap});

  final Message message;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Column(
        children: <Widget>[
          Text(message.text),
          Divider()
        ],
      ),
      onTap: () => this.onTap()
    );
  }
}
