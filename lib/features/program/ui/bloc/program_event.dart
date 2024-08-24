part of 'program_bloc.dart';

@freezed
class ProgramEvent with _$ProgramEvent {
  const factory ProgramEvent.getPrograms(
    GetAllProgramParams params,
  ) = ProgramEventGetPrograms;
  const factory ProgramEvent.filterPrograms(
    String query,
  ) = ProgramEventFilterPrograms;
  const factory ProgramEvent.clear() = ProgramEventClear;

  // Actions
  const factory ProgramEvent.create(
    CreateProgramParams params,
  ) = ProgramEventCreate;
  const factory ProgramEvent.update(
    UpdateProgramParams params,
  ) = ProgramEventUpdate;
  const factory ProgramEvent.delete(
    DeleteProgramParams params,
  ) = ProgramEventDelete;
}
