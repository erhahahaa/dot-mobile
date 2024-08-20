part of 'coach_tactical_bloc.dart';

@freezed
class CoachTacticalEvent with _$CoachTacticalEvent {
  const factory CoachTacticalEvent.getTacticals(
    GetAllTacticalParams params,
  ) = _GetTacticals;
  const factory CoachTacticalEvent.filterTacticals(
    String query,
  ) = _FilterTacticals;
  const factory CoachTacticalEvent.clear() = _Clear;

  // Actions
  const factory CoachTacticalEvent.create(
    CreateTacticalParams params,
  ) = _Create;
  const factory CoachTacticalEvent.update(
    UpdateTacticalParams params,
  ) = _Update;
  const factory CoachTacticalEvent.delete(
    DeleteTacticalParams params,
  ) = _Delete;
}
