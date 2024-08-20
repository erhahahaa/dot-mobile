part of 'athlete_exercise_bloc.dart';

@freezed
class AthleteExerciseEvent with _$AthleteExerciseEvent {
  const factory AthleteExerciseEvent.clear() = _Clear;
  const factory AthleteExerciseEvent.getExercises(
    GetAllExerciseParams params,
  ) = _GetExercises;
  const factory AthleteExerciseEvent.filterExercises(
    String query,
  ) = _FilterExercises;
}
