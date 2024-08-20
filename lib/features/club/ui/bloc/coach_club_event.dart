part of 'coach_club_bloc.dart';

@freezed
class CoachClubEvent with _$CoachClubEvent {
  const factory CoachClubEvent.getClubs() = _GetClubs;
  const factory CoachClubEvent.filterClubs(
    String query,
  ) = _FilterClubs;
  const factory CoachClubEvent.clear() = _Clear;

  // Actions
  const factory CoachClubEvent.create(
    CreateClubParams params,
  ) = _Create;
  const factory CoachClubEvent.update(
    UpdateClubParams params,
  ) = _Update;
  const factory CoachClubEvent.delete(
    DeleteClubParams params,
  ) = _Delete;
}
