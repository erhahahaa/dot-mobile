import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences_model.freezed.dart';

@freezed
class UserPreferencesModel with _$UserPreferencesModel {
  const factory UserPreferencesModel({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(Locale('en', "US")) Locale locale,
  }) = _UserPreferencesModel;

  factory UserPreferencesModel.fromEntity(UserPreferencesEntity entity) {
    return UserPreferencesModel(
      themeMode: entity.themeMode,
      locale: Locale(entity.langCode, entity.countryCode),
    );
  }
}

extension UserPreferencesModelX on UserPreferencesModel {
  UserPreferencesEntity toEntity() {
    return UserPreferencesEntity(
      themeMode: themeMode,
      langCode: locale.languageCode,
      countryCode: locale.countryCode ?? 'US',
    );
  }
}
