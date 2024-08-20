part of 'user_pref_bloc.dart';

@freezed
class UserPrefEvent with _$UserPrefEvent {
  const factory UserPrefEvent.initialize() = _Started;
  const factory UserPrefEvent.changeLocale(Locale locale) = _ChangeLocale;
  const factory UserPrefEvent.changeThemeMode(ThemeMode themeMode) =
      _ChangeThemeMode;
}
