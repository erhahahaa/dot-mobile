import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exercise_param.freezed.dart';
part 'create_exercise_param.g.dart';

@freezed
class CreateProgramExerciseParams with _$CreateProgramExerciseParams {
  const factory CreateProgramExerciseParams({
    @Default(0) int order,
    @Default(0) int programId,
    @Default(0) int mediaId,
    @Default('') String name,
    String? description,
    @Default(ProgramUnitValueModel()) ProgramUnitValueModel repetition,
    @Default(ProgramUnitValueModel()) ProgramUnitValueModel sets,
    @Default(ProgramUnitValueModel()) ProgramUnitValueModel rest,
    @Default(ProgramUnitValueModel()) ProgramUnitValueModel tempo,
    @Default(ProgramUnitValueModel()) ProgramUnitValueModel intensity,
  }) = _CreateProgramExerciseParams;

  factory CreateProgramExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProgramExerciseParamsFromJson(json);
}
