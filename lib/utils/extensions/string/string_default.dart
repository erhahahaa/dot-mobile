import 'package:dot_coaching/core/constants/constants.dart';
import 'package:flutter/services.dart';

extension StringDefault on String {
  String maxChar(int length) {
    if (this.length <= length) {
      return this;
    }
    return substring(0, length);
  }

  void toClipboard() async {
    await Clipboard.setData(ClipboardData(text: this));
  }

  String? get capitalizeFirst {
    if (isEmpty) {
      return null;
    }
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return split(' ').map((e) => e.capitalizeFirst!).join(' ');
  }
}

extension StringDefaultNullable on String? {
  String sportImage() {
    if (this == null) {
      return AppConstants.SPORT_IMAGE;
    } else {
      return this!;
    }
  }
}
