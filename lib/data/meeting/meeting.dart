import 'package:flutter/material.dart';

class Meeting {
  String eventName;
  DateTime startTime;
  DateTime endTime;
  Color background;

  Meeting({
    required this.eventName,
    required this.startTime,
    required this.endTime,
    required this.background,
  });
}
