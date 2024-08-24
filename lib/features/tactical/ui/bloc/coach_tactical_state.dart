part of 'coach_tactical_bloc.dart';

@freezed
class CoachTacticalState with _$CoachTacticalState {
  const factory CoachTacticalState.initial() = CoachTacticalStateInitial;
  const factory CoachTacticalState.loading() = CoachTacticalStateLoading;
  const factory CoachTacticalState.loaded({
    required List<TacticalModel> tacticals,
    required List<TacticalModel> filteredTacticals,
  }) = CoachTacticalStateLoaded;
  const factory CoachTacticalState.failure(String message) = CoachTacticalStateFailure;

  // Actions
  const factory CoachTacticalState.created(
    TacticalModel tactical,
  ) = CoachTacticalStateCreated;
  const factory CoachTacticalState.updated(
    TacticalModel tactical,
  ) = CoachTacticalStateUpdated;
  const factory CoachTacticalState.deleted(
    TacticalModel tactical,
  ) = CoachTacticalStateDeleted;
}
