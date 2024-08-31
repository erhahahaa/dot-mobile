import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exercise_usecase.freezed.dart';
part 'create_exercise_usecase.g.dart';

@freezed
class CreateExerciseParams with _$CreateExerciseParams {
  const factory CreateExerciseParams({
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
  }) = _CreateExerciseParams;

  const CreateExerciseParams._();

  factory CreateExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$CreateExerciseParamsFromJson(json);
}
