import 'package:dot_coaching/utils/utils.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

mixin class FirebaseMessagingService {
  static Future<void> init() async {
    final permission = await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    log.d(
        'FirebaseMessaging permission granted: ${permission.authorizationStatus}');

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<String?> getFCMToken() async {
    return await FirebaseMessaging.instance.getToken();
  }
}
