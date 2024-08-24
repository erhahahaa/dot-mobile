part of 'athlete_club_bloc.dart';

@freezed
class AthleteClubState with _$AthleteClubState {
  const factory AthleteClubState.initial() = _Initial;
  const factory AthleteClubState.loading() = _Loading;
  const factory AthleteClubState.loaded({
    @Default([]) required List<ClubModel> clubs,
    @Default([]) required List<ClubModel> filteredClubs,
  }) = _Loaded;
  const factory AthleteClubState.failure(String message) = _Failure;
}
