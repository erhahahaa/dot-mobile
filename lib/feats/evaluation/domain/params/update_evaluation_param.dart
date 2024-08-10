import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_evaluation_param.freezed.dart';
part 'update_evaluation_param.g.dart';

@freezed
class UpdateEvaluationParams with _$UpdateEvaluationParams {
  const factory UpdateEvaluationParams({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default(0) int examId,
    @Default(0) int athleteId,
    @Default(0) int coachId,
    @Default([]) List<QuestionEvaluationModel> evaluations,
  }) = _UpdateEvaluationParams;

  factory UpdateEvaluationParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateEvaluationParamsFromJson(json);
}
