part of 'coach_club_bloc.dart';

@freezed
class CoachClubEvent with _$CoachClubEvent {
  const factory CoachClubEvent.getClubs() = CoachClubEventGetClubs;
  const factory CoachClubEvent.filterClubs(
    String query,
  ) = CoachClubEventFilterClubs;
  const factory CoachClubEvent.clear() = CoachClubEventClear;

  // Actions
  const factory CoachClubEvent.create(
    CreateClubParams params,
  ) = CoachClubEventCreate;
  const factory CoachClubEvent.update(
    UpdateClubParams params,
  ) = CoachClubEventUpdate;
  const factory CoachClubEvent.delete(
    DeleteClubParams params,
  ) = CoachClubEventDelete;
}
