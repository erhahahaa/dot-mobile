part of 'club_cubit.dart';

@freezed
class ClubState with _$ClubState {
  const factory ClubState({
    @Default(BaseState.initial) BaseState state,
  }) = _ClubState;
}
