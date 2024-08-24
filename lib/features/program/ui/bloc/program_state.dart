part of 'program_bloc.dart';

@freezed
class ProgramState with _$ProgramState {
  const factory ProgramState.initial() = ProgramStateInitial;
  const factory ProgramState.loading() = ProgramStateLoading;
  const factory ProgramState.success({
    required List<ProgramModel> programs,
    required List<ProgramModel> filteredPrograms,
    ProgramModel? selectedProgram,
  }) = ProgramStateSuccess;
  const factory ProgramState.failure(
    String message,
  ) = ProgramStateFailure;

  // Actions
  const factory ProgramState.created(
    ProgramModel program,
  ) = ProgramStateCreated;
  const factory ProgramState.updated(
    ProgramModel program,
  ) = ProgramStateUpdated;
  const factory ProgramState.deleted(
    ProgramModel program,
  ) = ProgramStateDeleted;
}
