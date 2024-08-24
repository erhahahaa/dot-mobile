part of 'athlete_tactical_bloc.dart';

@freezed
class AthleteTacticalEvent with _$AthleteTacticalEvent {
  const factory AthleteTacticalEvent.clear() = AthleteTacticalEventClear;
  const factory AthleteTacticalEvent.getTacticals(
    GetAllTacticalParams params,
  ) = AthleteTacticalEventGetTacticals;
  const factory AthleteTacticalEvent.filterTacticals(
    String query,
  ) = AthleteTacticalEventFilterTacticals;
}
