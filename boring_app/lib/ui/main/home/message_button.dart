import 'package:flutter/material.dart';

class MessageButton extends StatelessWidget {
  final VoidCallback onTap;

  MessageButton({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16),
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: Colors.white,
          highlightColor: Color(0x99FFFFFF),
          elevation: 0,
          highlightElevation: 0,
          onPressed: () => this.onTap(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 4, right: 16),
                    child: Image(image: AssetImage('assets/bell.png')),
                  ),
                  Container(
                    height: 56,
                    width: 1,
                    color: Color(0xFFEFEFEF),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: Text(
                        'Сообщения',
                        style: TextStyle(
                            color: Color(0xFF5D72E0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 8),
                child: Text(
                  '1 новое',
                  style: TextStyle(
                      color: Color(0xFFF27197),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              )
            ],
          ),
        ));
  }
}
