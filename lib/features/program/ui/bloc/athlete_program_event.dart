part of 'athlete_program_bloc.dart';

@freezed
class AthleteProgramEvent with _$AthleteProgramEvent {
  const factory AthleteProgramEvent.clear() = AthleteProgramEventClear;
  const factory AthleteProgramEvent.getPrograms(
    GetAllProgramParams params,
  ) = AthleteProgramEventGetPrograms;
  const factory AthleteProgramEvent.filterPrograms(
    String query,
  ) = AthleteProgramEventFilterPrograms;
}
