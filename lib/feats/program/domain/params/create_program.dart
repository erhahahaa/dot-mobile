import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_program.freezed.dart';
part 'create_program.g.dart';

@freezed
class CreateProgramParams with _$CreateProgramParams {
  const factory CreateProgramParams({
    @Default(0) int clubId, 
    @Default('') String name,
    DateTime? startDate,
    DateTime? endDate,
    @Default([]) List<CreateProgramExerciseParams> exercises,
  }) = _CreateProgramParams;

  factory CreateProgramParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProgramParamsFromJson(json);
}
