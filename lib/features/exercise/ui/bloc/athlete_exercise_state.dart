part of 'athlete_exercise_bloc.dart';

@freezed
class AthleteExerciseState with _$AthleteExerciseState {
  const factory AthleteExerciseState.initial() = AthleteExerciseStateInitial;
  const factory AthleteExerciseState.loading() = AthleteExerciseStateLoading;
  const factory AthleteExerciseState.loaded({
    required List<ExerciseModel> exercises,
    required List<ExerciseModel> filteredExercises,
  }) = AthleteExerciseStateLoaded;
  const factory AthleteExerciseState.failure(
    String message,
  ) = AthleteExerciseStateFailure;
}
