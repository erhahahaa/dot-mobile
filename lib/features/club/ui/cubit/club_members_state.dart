part of 'club_members_cubit.dart';

@freezed
class ClubMembersState with _$ClubMembersState {
  const factory ClubMembersState({
    UserModel? selectedUser,
    @Default([]) List<UserModel> members,
    @Default([]) List<UserModel> filteredMembers,
  }) = _ClubMembersState;
}
