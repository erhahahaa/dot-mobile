import 'package:dot_coaching/core/core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

@module
mixin FirebaseService {
  @FactoryMethod(preResolve: true)
  static Future<void> init() async {
    // if (kIsWeb || kIsWasm) return;
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // if (kDebugMode) {
    //   await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    // } else {
    //   await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    // }

    // Isolate.current.addErrorListener(
    //   RawReceivePort((List<dynamic> pair) async {
    //     final List<dynamic> errorAndStacktrace = pair;
    //     await FirebaseCrashlytics.instance.recordError(
    //       errorAndStacktrace.first,
    //       errorAndStacktrace.last as StackTrace,
    //     );
    //   }).sendPort,
    // );
  }
}
