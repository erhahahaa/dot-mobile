part of 'coach_program_bloc.dart';

@freezed
class CoachProgramEvent with _$CoachProgramEvent {
  const factory CoachProgramEvent.getPrograms(
    GetAllProgramParams params,
  ) = _GetPrograms;
  const factory CoachProgramEvent.filterPrograms(
    String query,
  ) = _FilterPrograms;
  const factory CoachProgramEvent.clear() = _Clear;

  // Actions
  const factory CoachProgramEvent.create(
    CreateProgramParams params,
  ) = _Create;
  const factory CoachProgramEvent.update(
    UpdateProgramParams params,
  ) = _Update;
  const factory CoachProgramEvent.delete(
    DeleteProgramParams params,
  ) = _Delete;
}
