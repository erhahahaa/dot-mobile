part of 'club_members_cubit.dart';

@freezed
class ClubMembersState with _$ClubMembersState {
  const factory ClubMembersState({
    @Default(false) bool isLoading,
    UserModel? selectedUser,
    @Default([]) List<UserModel> members,
    @Default([]) List<UserModel> filteredMembers,
    @Default([]) List<UserModel> searchResult,
  }) = _ClubMembersState;
}
