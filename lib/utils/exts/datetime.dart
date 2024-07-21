import 'package:intl/intl.dart';

extension DatetimeX on DateTime {
  // Format date to string like day fullmonth year
  String toDayMonthYear({String locale = 'id'}) {
    return DateFormat('d MMMM y', locale).format(this);
  }
}
