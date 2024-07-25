import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exercise_param.freezed.dart';
part 'create_exercise_param.g.dart';

@freezed
class CreateProgramExerciseParams with _$CreateProgramExerciseParams {
  const factory CreateProgramExerciseParams({
    @Default(0) int programId,
    @Default('') String name,
    @Default('') String description,
    @Default(0) int repetition,
    @Default(0) int sets,
    @Default(0) int rest,
  }) = _CreateProgramExerciseParams;

  factory CreateProgramExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProgramExerciseParamsFromJson(json);
}
