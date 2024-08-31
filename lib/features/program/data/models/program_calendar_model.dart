import 'dart:math';
import 'dart:ui';

import 'package:dot_coaching/features/feature.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ProgramCalendarModel extends CalendarDataSource {
  ProgramCalendarModel(List<ProgramModel> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].startDate;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].endDate;
  }

  @override
  String getSubject(int index) {
    return appointments![index].name;
  }

  @override
  Color getColor(int index) {
    // return appointments![index].background;
    return ProgramCalendarModel.predefined[Random().nextInt(6)];
  }

  @override
  bool isAllDay(int index) {
    // return appointments![index].isAllDay;
    return true;
  }

  static List<Color> predefined = [
    const Color(0xFF1B6B93),
    const Color(0xFF070F4E),
    const Color(0xFF515585),
    const Color(0xFFF2BE8D),
    const Color(0xFF801336),
    const Color(0xFF3B503D),
  ];
}
