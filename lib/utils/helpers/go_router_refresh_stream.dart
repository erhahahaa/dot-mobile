import 'dart:async';

import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((event) {
      try {
        notifyListeners();
      } catch (e) {
        log.e("GoRouterRefreshStream: $e");
      }
      // log.f("GoRouterRefreshStream: $event");
    });
  }

  late final StreamSubscription _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
