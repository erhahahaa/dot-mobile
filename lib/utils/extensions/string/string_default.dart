import 'package:dot_coaching/core/constants/constants.dart';

extension StringDefault on String {
  String maxChar(int length) {
    return substring(0, length);
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
