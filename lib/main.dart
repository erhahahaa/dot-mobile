import 'dart:async';
import 'dart:io';

import 'package:dot_coaching/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/sl.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await FirebaseServices.init();
    await FirebaseMessagingService.init();
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
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

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await FirebaseServices.init();
  try {
    final IsarClient local = IsarClient();
    local.initIsar();
    final DioClient remote = DioClient(local);
    final userRepo = UserRepoImpl(remote, local);

    final notifications = await userRepo.getNotifications();
    notifications.fold(
      (l) => null,
      (r) {
        if (r.any((n) => n.uid == message.data['uid'])) {
          return;
        }
        r.add(NotificationDataModel.fromJson(message.data));
        userRepo
            .cacheNotification(NotificationDataModel.fromJson(message.data));
      },
    );
  } catch (error, stackTrace) {
    await FirebaseCrashlytics.instance.recordError(error, stackTrace);
  }
}
