import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'user_preferences_entity.g.dart';

@collection
class UserPreferencesEntity {
  Id id = Isar.autoIncrement;
  @enumerated
  ThemeMode themeMode;
  String langCode, countryCode;

  UserPreferencesEntity({
    this.id = Isar.autoIncrement,
    this.themeMode = ThemeMode.system,
    this.langCode = 'en',
    this.countryCode = 'US',
  });
}
