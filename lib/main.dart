import 'dart:async';
import 'dart:io';

import 'package:dot_coaching/app/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
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
    await FirebaseService.init();
    if (!kIsWasm || !kIsWeb) await Isar.initialize();
    await configureDependencies();
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]).then((_) {
      runApp(DotApp());
    });
  }, (error, stackTrace) async {
    if (!kIsWeb || !kIsWasm) {
      await FirebaseCrashlytics.instance.recordError(error, stackTrace);
    } else {
      if (kDebugMode) {
        Log.error(error.toString());
        Log.trace(stackTrace.toString());
      }
    }
  });
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await FirebaseService.init();
  try {
    if (kIsWasm || kIsWeb) return;
    final IsarService local = IsarService();
    local.initIsar();
    final DioService remote = DioService(local);
    final FirebaseMessagingService fcm = FirebaseMessagingService();
    final userRepo = UserRepositoryImpl(
        UserRemoteDataSourceImpl(remote), UserLocalDataSourceImpl(local, fcm));

    final notifications = await userRepo.getNotifications();
    notifications.fold(
      (l) => null,
      (r) {
        if (r.any((n) => n.uid == message.data['uid'])) {
          return;
        }
        r.add(NotificationDataModel.fromJson(message.data));
        userRepo.cacheNotification(
          CacheNotificationsParams(
            notification: NotificationDataModel.fromJson(message.data),
          ),
        );
      },
    );
  } catch (error, stackTrace) {
    await FirebaseCrashlytics.instance.recordError(error, stackTrace);
  }
}
