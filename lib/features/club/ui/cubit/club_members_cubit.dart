import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'club_members_cubit.freezed.dart';
part 'club_members_state.dart';

@lazySingleton
class ClubMembersCubit extends Cubit<ClubMembersState> {
  final GetClubMembersUsecase _getClubMembersUsecase;
  final KickClubMemberUsecase _kickClubMemberUsecase;
  final LeaveClubUsecase _leaveClubUsecase;
  final AddClubMemberUsecase _addClubMemberUsecase;
  final SearchUsersUsecase _searchUsersUsecase;

  ClubMembersCubit(
    this._getClubMembersUsecase,
    this._kickClubMemberUsecase,
    this._leaveClubUsecase,
    this._addClubMemberUsecase,
    this._searchUsersUsecase,
  ) : super(ClubMembersState());

  void getMembers({required int clubId, bool athleteOnly = false}) async {
    emit(state.copyWith(isLoading: true));
    final res = await _getClubMembersUsecase.call(
      GetClubMembersParams(clubId: clubId),
    );

    res.fold(
      (l) => ClubMembersState(members: []),
      (r) {
        if (athleteOnly) {
          final members = r.where((e) => e.role == UserRole.athlete).toList();
          emit(state.copyWith(
            isLoading: false,
            members: members,
            filteredMembers: members,
          ));
        } else {
          emit(
            state.copyWith(
              isLoading: false,
              members: r,
              filteredMembers: r,
            ),
          );
        }
      },
    );
  }

  void selectUser(UserModel user) {
    emit(state.copyWith(selectedUser: user));
  }

  void filterMembers(String query) {
    final filteredMembers = state.members
        .where((e) => e.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    emit(state.copyWith(filteredMembers: filteredMembers));
  }

  Future<void> kickMember({required int clubId, required int userId}) async {
    emit(state.copyWith(isLoading: true));
    final res = await _kickClubMemberUsecase.call(
      KickClubMemberParams(clubId: clubId, userId: userId),
    );

    res.fold(
      (l) => emit(state.copyWith(isLoading: false)),
      (r) {
        final members = state.members.where((e) => e.id != r.userId).toList();
        emit(state.copyWith(
          isLoading: false,
          members: members,
          filteredMembers: members,
        ));
      },
    );
  }

  Future<void> leaveClub({required int clubId}) async {
    emit(state.copyWith(isLoading: true));
    final res = await _leaveClubUsecase.call(
      LeaveClubParams(clubId: clubId),
    );

    res.fold(
      (l) => emit(state.copyWith(isLoading: false)),
      (r) {
        emit(state.copyWith(
          isLoading: false,
          members: [],
          filteredMembers: [],
        ));
      },
    );
  }

  Future<void> addMember({
    required int clubId,
    required int userId,
    required UserRole role,
  }) async {
    emit(state.copyWith(isLoading: true));
    final res = await _addClubMemberUsecase.call(
      AddClubMemberParams(
        clubId: clubId,
        userId: userId,
        role: role,
      ),
    );

    res.fold(
      (l) => emit(state.copyWith(isLoading: false)),
      (r) {
        final members = [...state.members, r];
        emit(state.copyWith(
          isLoading: false,
          members: members,
          filteredMembers: members,
        ));
      },
    );
  }

  Future<void> searchUsers(String query) async {
    emit(state.copyWith(isLoading: true));
    final res = await _searchUsersUsecase.call(SearchUsersParams(query: query));

    res.fold(
      (l) => emit(state.copyWith(isLoading: false)),
      (r) => emit(state.copyWith(isLoading: false, searchResult: r)),
    );
  }
}
