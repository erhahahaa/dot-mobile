part of 'club_cubit.dart';

@freezed
class ClubState with _$ClubState {
  factory ClubState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default(UserModel()) UserModel user,
    @Default([]) List<ClubModel> clubs,
    @Default([]) List<ClubModel> filteredClubs,
    @Default([]) List<UserModel> members,
    @Default([]) List<UserModel> filteredMembers,
    File? image,
  }) = _ClubState;
}
