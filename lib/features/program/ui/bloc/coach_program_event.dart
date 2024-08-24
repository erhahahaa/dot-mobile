part of 'coach_program_bloc.dart';

@freezed
class CoachProgramEvent with _$CoachProgramEvent {
  const factory CoachProgramEvent.getPrograms(
    GetAllProgramParams params,
  ) = CoachProgramEventGetPrograms;
  const factory CoachProgramEvent.filterPrograms(
    String query,
  ) = CoachProgramEventFilterPrograms;
  const factory CoachProgramEvent.clear() = CoachProgramEventClear;

  // Actions
  const factory CoachProgramEvent.create(
    CreateProgramParams params,
  ) = CoachProgramEventCreate;
  const factory CoachProgramEvent.update(
    UpdateProgramParams params,
  ) = CoachProgramEventUpdate;
  const factory CoachProgramEvent.delete(
    DeleteProgramParams params,
  ) = CoachProgramEventDelete;
}
