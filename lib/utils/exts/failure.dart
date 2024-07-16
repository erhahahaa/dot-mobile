import 'package:dot_coaching/core/core.dart';

extension FailureExtensions on Failure {
  String get msg {
    if (this is ServerFailure) return  message;
    return toString();
  }
}
