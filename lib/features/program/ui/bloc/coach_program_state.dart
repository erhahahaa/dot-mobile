part of 'coach_program_bloc.dart';

@freezed
class CoachProgramState with _$CoachProgramState {
  const factory CoachProgramState.initial() = CoachProgramStateInitial;
  const factory CoachProgramState.loading() = CoachProgramStateLoading;
  const factory CoachProgramState.loaded({
    required List<ProgramModel> programs,
    required List<ProgramModel> filteredPrograms,
  }) = CoachProgramStateLoaded;
  const factory CoachProgramState.failure(String message) =
      CoachProgramStateFailure;

  // Actions
  const factory CoachProgramState.created(
    ProgramModel program,
  ) = CoachProgramStateCreated;
  const factory CoachProgramState.updated(
    ProgramModel program,
  ) = CoachProgramStateUpdated;
  const factory CoachProgramState.deleted(
    ProgramModel program,
  ) = CoachProgramStateDeleted;
}
