part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserStateInitial;
  const factory UserState.loading() = UserStateLoading;
  const factory UserState.foundUsernames(
    List<String> usernames,
  ) = UserStateFoundUsernames;
  const factory UserState.success({
    @Default(UserModel()) UserModel user,
    @Default('') String fcmToken,
  }) = UserStateSuccess;
  const factory UserState.failure(String message) = UserStateFailure;
}
