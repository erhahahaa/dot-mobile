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
  static void debug(dynamic message) => _log.d(message);
  static void error(dynamic message) => _log.e(message);
  static void failure(dynamic message) => _log.f(message);
  static void info(dynamic message) => _log.i(message);
  static void warning(dynamic message) => _log.w(message);
  static void trace(dynamic message) => _log.t(message);
}
