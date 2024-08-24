part of 'club_bloc.dart';

@freezed
class ClubState with _$ClubState {
  const factory ClubState.initial() = ClubStateInitial;
  const factory ClubState.loading() = ClubStateLoading;
  const factory ClubState.loaded({
    required List<ClubModel> clubs,
    required List<ClubModel> filteredClubs,
  }) = ClubStateLoaded;
  const factory ClubState.failure(String message) = ClubStateFailure;

  // Actions
  const factory ClubState.created(
    ClubModel club,
  ) = ClubStateCreated;
  const factory ClubState.updated(
    ClubModel club,
  ) = ClubStateUpdated;
  const factory ClubState.deleted(
    ClubModel club,
  ) = ClubStateDeleted;
}
