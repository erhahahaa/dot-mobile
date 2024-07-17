part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(BaseState.initial) BaseState state,
    @Default(UserModel()) UserModel user,
  }) = _UserState;
}
