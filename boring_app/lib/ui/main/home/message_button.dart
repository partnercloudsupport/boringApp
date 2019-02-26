import 'package:flutter/material.dart';

class MessageButton extends StatelessWidget {
  final VoidCallback onTap;

  MessageButton({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => this.onTap(),
        child: Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: Row(
            children: <Widget>[
              Text('🔔'),
              Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    'Сообщения',
                    style: TextStyle(
                        color: Color(0xFF5D72E0), fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ));
  }
}
