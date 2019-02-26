import 'package:boring_app/models/event.dart';
import 'package:flutter/material.dart';

class TimelineItem extends StatelessWidget {
  final Event event;
  final bool isFirst;
  final bool isLast;

  TimelineItem({@required this.event, this.isFirst, this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 22, right: 22),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 60,
                  child: Text(
                    '${event.dateTime.hour}:${event.dateTime.minute.toString().padLeft(2, '0')}',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1.25),
                  ),
                ),
                Stack(alignment: Alignment(0, -1), children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: this.isFirst ? 8 : 0),
                    width: 1,
                    height: isFirst ? 72 : isLast ? 8 : 80,
                    color: Colors.black12,
                  ),
                  Container(
                    padding: EdgeInsets.all(1.5),
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFF7182),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF7182),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                  )
                ]),
                Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            event.name,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Text(
                            event.place,
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFFA5A5A5)),
                          )
                        ]))
              ],
            ),
          ],
        ));
  }
}
