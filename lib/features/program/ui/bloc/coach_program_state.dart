part of 'coach_program_bloc.dart';

@freezed
class CoachProgramState with _$CoachProgramState {
  const factory CoachProgramState.initial() = _Initial;
  const factory CoachProgramState.loading() = _Loading;
  const factory CoachProgramState.loaded(
    CoachProgramLoadedEvent data,
  ) = _Loaded;
  const factory CoachProgramState.failure(String message) = _Failure;

  // Actions
  const factory CoachProgramState.created(
    ProgramModel program,
  ) = _Created;
  const factory CoachProgramState.updated(
    ProgramModel program,
  ) = _Updated;
  const factory CoachProgramState.deleted(
    ProgramModel program,
  ) = _Deleted;
}

@freezed
class CoachProgramLoadedEvent with _$CoachProgramLoadedEvent {
  const factory CoachProgramLoadedEvent({
    @Default([]) List<ProgramModel> programs,
    @Default([]) List<ProgramModel> filteredPrograms,
  }) = _CoachProgramLoadedEvent;
}
