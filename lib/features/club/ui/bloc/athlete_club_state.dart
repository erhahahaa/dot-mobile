part of 'athlete_club_bloc.dart';

@freezed
class AthleteClubState with _$AthleteClubState {
  const factory AthleteClubState.initial() = _Initial;
  const factory AthleteClubState.loading() = _Loading;
  const factory AthleteClubState.loaded(
    AthleteClubLoadedEvent data,
  ) = _Loaded;
  const factory AthleteClubState.failure(String message) = _Failure;
}

@freezed
class AthleteClubLoadedEvent with _$AthleteClubLoadedEvent {
  const factory AthleteClubLoadedEvent({
    @Default([]) List<ClubModel> clubs,
    @Default([]) List<ClubModel> filteredClubs,
  }) = _AthleteClubLoadedEvent;
}
