import 'package:boring_app/models/event.dart';
import 'package:boring_app/ui/main/home/timeline_item.dart';
import 'package:flutter/material.dart';

class TimelineEvents extends StatelessWidget {
  List<Event> events = [
    Event(name: 'Массаж'),
    Event(name: 'Грильяж'),
    Event(name: 'Кураж'),
  ];

  buildTimeline() {
    List<Widget> eventsItems = events.map((event) {
      bool isFirst = events.indexOf(event) == 0;
      bool isLast = events.indexOf(event) == events.length - 1;

      return TimelineItem(
        event: event,
        isFirst: isFirst,
        isLast: isLast,
      );
    }).toList();

    return Column(
      children: eventsItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 24),
            child: Text('Твоё расписание',
                style: TextStyle(
                    color: Color(0xFF5D72E0),
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
          ),
          Container(
            color: Color(0xFFEFEFEF),
            height: 1,
          ),
          Container(
              margin: EdgeInsets.only(top: 24, bottom: 24),
              child: this.buildTimeline())
        ],
      ),
    );
  }
}
