part of 'club_cubit.dart';

@freezed
class ClubState with _$ClubState {
  const factory ClubState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default(UserModel()) UserModel user,
    @Default([]) List<ClubModel> coachClubs,
    @Default([]) List<ClubModel> athleteClubs,
    File? image,
  }) = _ClubState;
}
