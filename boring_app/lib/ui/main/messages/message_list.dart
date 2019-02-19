import 'package:boring_app/stores/stores_manager.dart';
import 'package:boring_app/ui/main/messages/message_item.dart';
import 'package:boring_app/ui/main/messages/view_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MessageList extends StatelessWidget {
  final store = StoresManager().msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Messages')),
        body: Container(
          child: Observer(
              builder: (context) => ListView.builder(
                    itemCount: store.messages.length,
                    itemBuilder: (context, index) {
                      final msg = store.messages[index];
                      return MessageItem(
                        message: msg,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ViewMessage(message: msg)));
                        },
                      );
                    },
                  )),
        ));
  }
}
