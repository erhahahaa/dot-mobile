part of 'coach_tactical_bloc.dart';

@freezed
class CoachTacticalEvent with _$CoachTacticalEvent {
  const factory CoachTacticalEvent.getTacticals(
    GetAllTacticalParams params,
  ) = CoachTacticalEventGetTacticals;
  const factory CoachTacticalEvent.filterTacticals(
    String query,
  ) = CoachTacticalEventFilterTacticals;
  const factory CoachTacticalEvent.clear() = CoachTacticalEventClear;

  // Actions
  const factory CoachTacticalEvent.create(
    CreateTacticalParams params,
  ) = CoachTacticalEventCreate;
  const factory CoachTacticalEvent.update(
    UpdateTacticalParams params,
  ) = CoachTacticalEventUpdate;
  const factory CoachTacticalEvent.delete(
    DeleteTacticalParams params,
  ) = CoachTacticalEventDelete;
}
