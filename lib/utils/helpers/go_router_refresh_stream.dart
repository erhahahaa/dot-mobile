import 'dart:async';

import 'package:dot_coaching/utils/helpers/logger.dart';
import 'package:flutter/material.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (dynamic _) {
        try {
          notifyListeners();
        } catch (e) {
          log.e("GoRouterRefreshStream: $e");
        }
      },
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
