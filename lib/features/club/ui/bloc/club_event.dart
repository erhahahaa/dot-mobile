part of 'club_bloc.dart';

@freezed
class ClubEvent with _$ClubEvent {
  const factory ClubEvent.getClubs() = ClubEventGetClubs;
  const factory ClubEvent.filterClubs(
    String query,
  ) = ClubEventFilterClubs;
  const factory ClubEvent.clear() = ClubEventClear;

  // Actions
  const factory ClubEvent.create(
    CreateClubParams params,
  ) = ClubEventCreate;
  const factory ClubEvent.update(
    UpdateClubParams params,
  ) = ClubEventUpdate;
  const factory ClubEvent.delete(
    DeleteClubParams params,
  ) = ClubEventDelete;
}
