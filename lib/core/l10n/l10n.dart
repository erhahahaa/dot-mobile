import 'package:dot_coaching/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 

class L10n {
  L10n._();

  static final all = [
    const Locale('en', 'US'),
    const Locale('id', 'ID'),
    const Locale('es', 'ES'),
    const Locale('hi', 'IN'),
    const Locale('zh', 'CN'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'id':
        return 'Bahasa';
      case 'es':
        return 'Español';
      case 'hi':
        return 'हिन्दी';
      case 'zh':
        return '中文';
      case 'en':
      default:
        return 'English';
    }
  }

  static Widget getIcon(String code) {
    switch (code) {
      case 'id':
        return Assets.images.flags.id.svg(width: 14.w);
      case 'es':
        return Assets.images.flags.es.svg(width: 14.w);
      case 'hi':
        return Assets.images.flags.hi.svg(width: 14.w);
      case 'zh':
        return Assets.images.flags.cn.svg(width: 14.w);
      case 'en':
      default:
        return Assets.images.flags.us.svg(width: 14.w);
    }
  }
}
