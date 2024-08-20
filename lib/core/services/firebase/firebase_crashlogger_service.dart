import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

mixin class FirebaseCrashLoggerService {
  Future<void> nonFatalError({
    required dynamic error,
    required StackTrace stackTrace,
  }) async {
    if (!kIsWeb && !kDebugMode) {
      await FirebaseCrashlytics.instance.recordError(error, stackTrace);
    }
  }
}
