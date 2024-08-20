part of 'athlete_club_bloc.dart';

@freezed
class AthleteClubEvent with _$AthleteClubEvent {
  const factory AthleteClubEvent.clear() = _Clear;
  const factory AthleteClubEvent.getClubs() = _GetClubs;
  const factory AthleteClubEvent.filterClubs(
    String query,
  ) = _FilterClubs;
}
