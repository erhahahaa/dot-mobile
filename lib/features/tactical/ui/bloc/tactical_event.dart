part of 'tactical_bloc.dart';

@freezed
class TacticalEvent with _$TacticalEvent {
  const factory TacticalEvent.getTacticals(
    GetAllTacticalParams params,
  ) = TacticalEventGetTacticals;
  const factory TacticalEvent.filterTacticals(
    String query,
  ) = TacticalEventFilterTacticals;
  const factory TacticalEvent.clear() = TacticalEventClear;

  // Actions
  const factory TacticalEvent.create(
    CreateTacticalParams params,
  ) = TacticalEventCreate;
  const factory TacticalEvent.update(
    UpdateTacticalParams params,
  ) = TacticalEventUpdate;
  const factory TacticalEvent.delete(
    DeleteTacticalParams params,
  ) = TacticalEventDelete;
}
