part of 'athlete_club_bloc.dart';

@freezed
class AthleteClubState with _$AthleteClubState {
  const factory AthleteClubState.initial() = AthleteClubStateInitial;
  const factory AthleteClubState.loading() = AthleteClubStateLoading;
  const factory AthleteClubState.loaded({
    required List<ClubModel> clubs,
    required List<ClubModel> filteredClubs,
  }) = AthleteClubStateLoaded;
  const factory AthleteClubState.failure(
    String message,
  ) = AthleteClubStateFailure;
}
