part of 'athlete_exercise_bloc.dart';

@freezed
class AthleteExerciseState with _$AthleteExerciseState {
  const factory AthleteExerciseState.initial() = _Initial;
  const factory AthleteExerciseState.loading() = _Loading;
  const factory AthleteExerciseState.loaded({
    required List<ExerciseModel> exercises,
    required List<ExerciseModel> filteredExercises,
  }) = _Loaded;
  const factory AthleteExerciseState.failure(String message) = _Failure;
}
