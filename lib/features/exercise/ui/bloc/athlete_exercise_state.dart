part of 'athlete_exercise_bloc.dart';

@freezed
class AthleteExerciseState with _$AthleteExerciseState {
  const factory AthleteExerciseState.initial() = _Initial;
  const factory AthleteExerciseState.loading() = _Loading;
  const factory AthleteExerciseState.loaded(
    AthleteExerciseLoadedEvent data,
  ) = _Loaded;
  const factory AthleteExerciseState.failure(String message) = _Failure;
}

@freezed
class AthleteExerciseLoadedEvent with _$AthleteExerciseLoadedEvent {
  const factory AthleteExerciseLoadedEvent({
    @Default([]) List<ExerciseModel> exercises,
    @Default([]) List<ExerciseModel> filteredExercises,
  }) = _AthleteExerciseLoadedEvent;
}
