part of 'athlete_tactical_bloc.dart';

@freezed
class AthleteTacticalState with _$AthleteTacticalState {
  const factory AthleteTacticalState.initial() = _Initial;
  const factory AthleteTacticalState.loading() = _Loading;
  const factory AthleteTacticalState.loaded(
    AthleteTacticalLoadedEvent data,
  ) = _Loaded;
  const factory AthleteTacticalState.failure(String message) = _Failure;
}

@freezed
class AthleteTacticalLoadedEvent with _$AthleteTacticalLoadedEvent {
  const factory AthleteTacticalLoadedEvent({
    @Default([]) List<TacticalModel> tacticals,
    @Default([]) List<TacticalModel> filteredTacticals,
  }) = _AthleteTacticalLoadedEvent;
}
