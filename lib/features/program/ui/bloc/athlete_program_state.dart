part of 'athlete_program_bloc.dart';

@freezed
class AthleteProgramState with _$AthleteProgramState {
  const factory AthleteProgramState.initial() = _Initial;
  const factory AthleteProgramState.loading() = _Loading;
  const factory AthleteProgramState.loaded(
    AthleteProgramLoadedEvent data,
  ) = _Loaded;
  const factory AthleteProgramState.failure(String message) = _Failure;
}

@freezed
class AthleteProgramLoadedEvent with _$AthleteProgramLoadedEvent {
  const factory AthleteProgramLoadedEvent({
    @Default([]) List<ProgramModel> programs,
    @Default([]) List<ProgramModel> filteredPrograms,
  }) = _AthleteProgramLoadedEvent;
}
