part of 'athlete_tactical_bloc.dart';

@freezed
class AthleteTacticalEvent with _$AthleteTacticalEvent {
  const factory AthleteTacticalEvent.clear() = _Clear;
  const factory AthleteTacticalEvent.getTacticals(
    GetAllTacticalParams params,
  ) = _GetTacticals;
  const factory AthleteTacticalEvent.filterTacticals(
    String query,
  ) = _FilterTacticals;
}
