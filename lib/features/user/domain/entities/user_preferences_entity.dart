import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'user_preferences_entity.g.dart';

@Collection(accessor: 'userPreferences')
class UserPreferencesEntity {
  int id;
  @enumValue
  ThemeMode themeMode;
  String langCode, countryCode;

  UserPreferencesEntity({
    this.id = 0,
    this.themeMode = ThemeMode.system,
    this.langCode = 'en',
    this.countryCode = 'US',
  });
}
