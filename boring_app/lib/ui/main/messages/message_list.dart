import 'dart:async';

import 'package:boring_app/data/firestore_repository.dart';
import 'package:boring_app/models/message.dart';
import 'package:boring_app/stores/stores_manager.dart';
import 'package:boring_app/ui/main/messages/message_item.dart';
import 'package:boring_app/ui/main/messages/view_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MessageList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MessageListState();
}

class MessageListState extends State<MessageList> {
  List<Message> messages;
  StreamSubscription<QuerySnapshot> subscription;

  @override
  void initState() {
    super.initState();
    messages = [];

    subscription?.cancel();
    subscription = FirestoreRepository()
        .getMessages(StoresManager().auth.user)
        .listen((snapshot) {
      final List<Message> list = snapshot.documents
          .map((doc) => new Message.fromMap(doc.data))
          .toList(growable: false);
      setState(() {
        this.messages = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Messages')),
        body: Container(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final msg = messages[index];
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
          ),
        ));
  }
}
