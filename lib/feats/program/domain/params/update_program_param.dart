import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_program_param.freezed.dart';
part 'update_program_param.g.dart';

@freezed
class UpdateProgramParams with _$UpdateProgramParams {
  const factory UpdateProgramParams({
    @Default(0) int id,
    @Default('') String name,
    DateTime? startDate,
    DateTime? endDate,
    @Default([]) List<UpdateProgramExerciseParams> exercises,
  }) = _UpdateProgramParams;

  factory UpdateProgramParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProgramParamsFromJson(json);
}
