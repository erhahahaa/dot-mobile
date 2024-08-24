part of 'coach_club_bloc.dart';

@freezed
class CoachClubState with _$CoachClubState {
  const factory CoachClubState.initial() = _Initial;
  const factory CoachClubState.loading() = _Loading;
  const factory CoachClubState.loaded({
    required List<ClubModel> clubs,
    required List<ClubModel> filteredClubs,
  }) = _Loaded;
  const factory CoachClubState.failure(String message) = _Failure;

  // Actions
  const factory CoachClubState.created(ClubModel club) = _Created;
  const factory CoachClubState.updated(ClubModel club) = _Updated;
  const factory CoachClubState.deleted(ClubModel club) = _Deleted;
}
