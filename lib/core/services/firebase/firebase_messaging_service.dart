import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
mixin class FirebaseMessagingService {
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    if (kIsWeb) return;

    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<String?> getFCMToken() async {
    if (kIsWeb) {
      return await FirebaseMessaging.instance.getToken(
          vapidKey:
              "BHx3YiGqjbawXXjOF_KKqzS8pqydPWhjH5PlpJB3vzD2ragXEhjsmg96njAjvJxfXozVdQhni5LJzfwKOY2r1DA");
    }
    return await FirebaseMessaging.instance.getToken();
  }
}
