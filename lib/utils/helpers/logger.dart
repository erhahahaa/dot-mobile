import 'package:logger/logger.dart';

final _log = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 50,
    colors: true,
    printEmojis: true,
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
);

mixin class Log {
  static void d(dynamic message) => _log.d(message);
  static void e(dynamic message) => _log.e(message);
  static void f(dynamic message) => _log.f(message);
  static void i(dynamic message) => _log.i(message);
  static void w(dynamic message) => _log.w(message);
  static void t(dynamic message) => _log.t(message);
}
