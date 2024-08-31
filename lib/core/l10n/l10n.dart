import 'package:flutter/material.dart';

class L10n {
  L10n._();

  static final all = [
    const Locale('en', 'US'),
    const Locale('id', 'ID'),
    // const Locale('es', 'ES'),
    // const Locale('hi', 'IN'),
    // const Locale('zh', 'CN'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'id':
        return '🇮🇩';
      // case 'es':
      //   return '🇪🇸
      // case 'hi':
      //  return '🇮🇳
      // case 'zh':
      //  return '🇨🇳
      case 'en':
      default:
        return '🇺🇸';
    }
  }

  static String getLanguage(String code) {
    switch (code) {
      case 'id':
        return 'Bahasa Indonesia';
      // case 'es':
      //   return 'Español';
      // case 'hi':
      //   return 'हिन्दी';
      // case 'zh':
      //   return '中文';
      case 'en':
      default:
        return 'English';
    }
  }
}
