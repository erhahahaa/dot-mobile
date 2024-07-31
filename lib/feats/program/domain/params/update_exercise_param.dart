import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_exercise_param.freezed.dart';
part 'update_exercise_param.g.dart';

@freezed
class UpdateProgramExerciseParams with _$UpdateProgramExerciseParams {
  const factory UpdateProgramExerciseParams({
    @Default(0) int id,
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
  }) = _UpdateProgramExerciseParams;

  factory UpdateProgramExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProgramExerciseParamsFromJson(json);
}
