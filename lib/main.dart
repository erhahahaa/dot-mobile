import 'dart:async';

import 'package:dot_coaching/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/di.dart';
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

// Future<void> montserratLicense(_) async {
//   LicenseRegistry.addLicense(() async* {
//     final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
//     yield LicenseEntryWithLineBreaks(['google_fonts'], license);
//   });
// }
