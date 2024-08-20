part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.foundUsernames(
    List<String> usernames,
  ) = _FoundUsernames;
  const factory UserState.success({
    @Default(UserModel()) UserModel user,
    @Default('') String fcmToken,
  }) = _Success;
  const factory UserState.failure(String message) = _Failure;
}
