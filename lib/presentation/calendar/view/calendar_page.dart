import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../data/meeting/meeting.dart';
import '../../../data/meeting/meeting_datasource.dart';
import '../../../data/tasks/task.dart';
import '../../../style/colors.dart';
import '../../../utils/extensions/context_extension.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                alignment: Alignment.center,
                child: Text(
                  'Calendar',
                  style: context.typo.dashboardTitle(),
                ),
              ),
              Expanded(
                child: SfCalendar(
                  dataSource: MeetingDataSource(_getDataSource()),
                  view: CalendarView.month,
                  todayHighlightColor: AppColors.mainColor,
                  cellBorderColor: Colors.transparent,
                  showDatePickerButton: true,
                  minDate: DateTime(2020, 01, 01, 07, 0, 0),
                  selectionDecoration: BoxDecoration(
                      border: Border.all(color: AppColors.mainColor)),
                  monthViewSettings: const MonthViewSettings(
                    dayFormat: 'EEE',
                    navigationDirection: MonthNavigationDirection.horizontal,
                    numberOfWeeksInView: 6,
                    showAgenda: true,
                    agendaItemHeight: 70,
                    showTrailingAndLeadingDates: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    for (var e in tasks) {
      meetings.add(Meeting(
        eventName: e.title,
        startTime: e.startTime,
        endTime: e.endTime,
        background: AppColors.mainColor,
      ));
    }
    return meetings;
  }
}
