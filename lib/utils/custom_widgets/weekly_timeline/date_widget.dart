import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'tap.dart';

class DateWidget extends StatelessWidget {
  final double? width;
  final DateTime date;
  final TextStyle? monthTextStyle, dayTextStyle, dateTextStyle;
  final Color selectionColor;
  final DateSelectionCallback? onDateSelected;
  final String? locale;
  const DateWidget({
    super.key,
    required this.date,
    required this.monthTextStyle,
    required this.dayTextStyle,
    required this.dateTextStyle,
    required this.selectionColor,
    this.width,
    this.onDateSelected,
    this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: selectionColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0,
              offset: Offset(3, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                DateFormat("MMM", locale).format(date).toUpperCase(), // Month
                style: monthTextStyle,
              ),
              Text(
                date.day.toString(), // Date
                style: dateTextStyle,
              ),
              Text(
                DateFormat("E", locale).format(date).toUpperCase(), // WeekDay
                style: dayTextStyle,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        // Check if onDateSelected is not null
        if (onDateSelected != null) {
          // Call the onDateSelected Function
          onDateSelected!(date);
        }
      },
    );
  }
}
