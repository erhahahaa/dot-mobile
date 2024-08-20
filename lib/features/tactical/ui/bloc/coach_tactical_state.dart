part of 'coach_tactical_bloc.dart';

@freezed
class CoachTacticalState with _$CoachTacticalState {
  const factory CoachTacticalState.initial() = _Initial;
  const factory CoachTacticalState.loading() = _Loading;
  const factory CoachTacticalState.loaded(
    CoachTacticalLoadedEvent data,
  ) = _Loaded;
  const factory CoachTacticalState.failure(String message) = _Failure;

  // Actions
  const factory CoachTacticalState.created(
    TacticalModel tactical,
  ) = _Created;
  const factory CoachTacticalState.updated(
    TacticalModel tactical,
  ) = _Updated;
  const factory CoachTacticalState.deleted(
    TacticalModel tactical,
  ) = _Deleted;
}

@freezed
class CoachTacticalLoadedEvent with _$CoachTacticalLoadedEvent {
  const factory CoachTacticalLoadedEvent({
    @Default([]) List<TacticalModel> tacticals,
    @Default([]) List<TacticalModel> filteredTacticals,
  }) = _CoachTacticalLoadedEvent;
}
