import 'package:app_sixteen_miracles_ebook/constants/colors.dart';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);
  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime.utc(1999, 01, 01),
        lastDay: DateTime.utc(2099, 12, 31),
        availableGestures: AvailableGestures.horizontalSwipe,
        headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyle(
                fontSize: 20, color: kFont, fontWeight: FontWeight.w700)),
        calendarStyle: const CalendarStyle(
          todayTextStyle: TextStyle(
              fontSize: 14, color: kWhite, fontWeight: FontWeight.w400),
        ),
      ),
    ));
  }
}
