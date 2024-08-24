part of 'athlete_club_bloc.dart';

@freezed
class AthleteClubEvent with _$AthleteClubEvent {
  const factory AthleteClubEvent.clear() = AthleteClubEventClear;
  const factory AthleteClubEvent.getClubs() = AthleteClubEventGetClubs;
  const factory AthleteClubEvent.filterClubs(
    String query,
  ) = AthleteClubEventFilterClubs;
}
