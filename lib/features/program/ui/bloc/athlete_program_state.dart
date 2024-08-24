part of 'athlete_program_bloc.dart';

@freezed
class AthleteProgramState with _$AthleteProgramState {
  const factory AthleteProgramState.initial() = _Initial;
  const factory AthleteProgramState.loading() = _Loading;
  const factory AthleteProgramState.loaded({
    required List<ProgramModel> programs,
    required List<ProgramModel> filteredPrograms,
  }) = _Loaded;
  const factory AthleteProgramState.failure(String message) = _Failure;
}
