import 'package:boring_app/stores/stores_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MessageList extends StatelessWidget {
  final store = StoresManager().msg;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListView.builder(
            itemCount: store.messages.length,
            itemBuilder: (_, index) {
              final message = store.messages[index];
              return Text(message.text);
            },
          ),
    );
  }
}
