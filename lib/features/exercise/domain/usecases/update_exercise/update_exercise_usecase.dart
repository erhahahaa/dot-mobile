import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_exercise_usecase.freezed.dart';
part 'update_exercise_usecase.g.dart';

@freezed
class UpdateExerciseParams with _$UpdateExerciseParams {
  const factory UpdateExerciseParams({
    required int id,
    required int order,
    required int programId,
    required int? mediaId,
    required String name,
    required String? description,
    required ExerciseUnitValueModel repetition,
    required ExerciseUnitValueModel sets,
    required ExerciseUnitValueModel rest,
    required ExerciseUnitValueModel tempo,
    required ExerciseUnitValueModel intensity,
  }) = _UpdateExerciseParams;

  const UpdateExerciseParams._();

  factory UpdateExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateExerciseParamsFromJson(json);
}
