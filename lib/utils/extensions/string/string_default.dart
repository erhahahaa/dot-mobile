import 'package:dot_coaching/core/constants/constants.dart';
import 'package:flutter/services.dart';

extension StringDefault on String {
  String maxChar(int length) {
    return substring(0, length);
  }

  void toClipboard() async {
    await Clipboard.setData(ClipboardData(text: this));
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
