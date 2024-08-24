part of 'athlete_exercise_bloc.dart';

@freezed
class AthleteExerciseEvent with _$AthleteExerciseEvent {
  const factory AthleteExerciseEvent.clear() = AthleteExerciseEventClear;
  const factory AthleteExerciseEvent.getExercises(
    GetAllExerciseParams params,
  ) = AthleteExerciseEventGetExercises;
  const factory AthleteExerciseEvent.filterExercises(
    String query,
  ) = AthleteExerciseEventFilterExercises;
}
