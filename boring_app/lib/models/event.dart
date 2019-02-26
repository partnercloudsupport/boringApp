import 'dart:math';

import 'package:flutter/material.dart';

class Event {
  String name;
  String place;
  DateTime dateTime;

  Event({@required this.name, this.place = 'Комната 405'}) {
    this.dateTime =
        DateTime.now().add(Duration(seconds: Random().nextInt(500)));
  }
}
