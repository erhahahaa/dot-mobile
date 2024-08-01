import 'dart:async';

import 'package:dot_coaching/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/sl.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';

void main() {
  // compute(montserratLicense, null);
  // GoogleFonts.config.allowRuntimeFetching = false;

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await FirebaseServices.init();
    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    await Isar.initializeIsarCore();
    await initDependencies();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]).then((_) {
      runApp(const DotApp());
    });
  }, (error, stackTrace) async {
    await FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async { 
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   log.d('RUNNING IN THE BACKGROUND');

//   log.f('Received message: $message');
 
// }


// Future<void> montserratLicense(_) async {
//   LicenseRegistry.addLicense(() async* {
//     final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
//     yield LicenseEntryWithLineBreaks(['google_fonts'], license);
//   });
// }
