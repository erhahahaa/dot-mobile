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

  ClubMembersCubit(
    this._getClubMembersUsecase,
    this._kickClubMemberUsecase,
    this._leaveClubUsecase,
  ) : super(ClubMembersState());

  void getMembers({required int clubId, bool athleteOnly = false}) async {
    final res = await _getClubMembersUsecase.call(
      GetClubMembersParams(clubId: clubId),
    );

    res.fold(
      (l) => ClubMembersState(members: []),
      (r) {
        if (athleteOnly) {
          final members = r.where((e) => e.role == UserRole.athlete).toList();
          emit(state.copyWith(
            members: members,
            filteredMembers: members,
          ));
        } else {
          emit(
            state.copyWith(
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
    final res = await _kickClubMemberUsecase.call(
      KickClubMemberParams(clubId: clubId, userId: userId),
    );

    res.fold(
      (l) => null,
      (r) {
        final members = state.members.where((e) => e.id != r.userId).toList();
        emit(state.copyWith(
          members: members,
          filteredMembers: members,
        ));
      },
    );
  }

  Future<void> leaveClub({required int clubId}) async {
    final res = await _leaveClubUsecase.call(
      LeaveClubParams(clubId: clubId),
    );

    res.fold(
      (l) => null,
      (r) {
        emit(state.copyWith(
          members: [],
          filteredMembers: [],
        ));
      },
    );
  }
}
