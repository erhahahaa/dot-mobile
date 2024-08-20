part of 'athlete_program_bloc.dart';

@freezed
class AthleteProgramEvent with _$AthleteProgramEvent {
  const factory AthleteProgramEvent.clear() = _Clear;
  const factory AthleteProgramEvent.getPrograms(
    GetAllProgramParams params,
  ) = _GetPrograms;
  const factory AthleteProgramEvent.filterPrograms(
    String query,
  ) = _FilterPrograms;
}
