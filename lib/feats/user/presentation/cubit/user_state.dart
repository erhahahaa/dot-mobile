part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default(UserModel()) UserModel user,
    @Default(Locale('en', 'US')) Locale locale,
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default([]) List<String> usernameSuggestions,
    @Default([]) List<NotificationDataModel> notifications,
    File? image,
  }) = _UserState;
}
