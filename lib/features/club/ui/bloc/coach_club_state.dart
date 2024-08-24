part of 'coach_club_bloc.dart';

@freezed
class CoachClubState with _$CoachClubState {
  const factory CoachClubState.initial() = CoachClubStateInitial;
  const factory CoachClubState.loading() = CoachClubStateLoading;
  const factory CoachClubState.loaded({
    required List<ClubModel> clubs,
    required List<ClubModel> filteredClubs,
  }) = CoachClubStateLoaded;
  const factory CoachClubState.failure(String message) = CoachClubStateFailure;

  // Actions
  const factory CoachClubState.created(
    ClubModel club,
  ) = CoachClubStateCreated;
  const factory CoachClubState.updated(
    ClubModel club,
  ) = CoachClubStateUpdated;
  const factory CoachClubState.deleted(
    ClubModel club,
  ) = CoachClubStateDeleted;
}
