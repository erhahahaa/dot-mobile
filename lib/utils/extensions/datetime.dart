import 'package:intl/intl.dart';

extension DatetimeX on DateTime {
  // Format date to string like day fullmonth year
  String toDayMonthYear({String locale = 'id'}) {
    return DateFormat('d MMMM y', locale).format(this);
  }
}

extension DateTimeX on DateTime? {
  int toAge() {
    if (this == null) return 0;
    final now = DateTime.now();
    final age = now.year - this!.year;
    final month = now.month - (this?.month ?? 0);
    if (month < 0 || (month == 0 && now.day < (this?.day ?? 0))) {
      return age - 1;
    }
    return age;
  }
}
