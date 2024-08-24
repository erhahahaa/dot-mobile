part of 'athlete_program_bloc.dart';

@freezed
class AthleteProgramState with _$AthleteProgramState {
  const factory AthleteProgramState.initial() = AthleteProgramStateInitial;
  const factory AthleteProgramState.loading() = AthleteProgramStateLoading;
  const factory AthleteProgramState.loaded({
    required List<ProgramModel> programs,
    required List<ProgramModel> filteredPrograms,
  }) = AthleteProgramStateLoaded;
  const factory AthleteProgramState.failure(
    String message,
  ) = AthleteProgramStateFailure;
}
