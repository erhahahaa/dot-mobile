import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_evaluation_param.freezed.dart';
part 'create_evaluation_param.g.dart';

@freezed
class CreateEvaluationParams with _$CreateEvaluationParams {
  const factory CreateEvaluationParams({
    @Default(0) int clubId,
    @Default(0) int examId,
    @Default(0) int athleteId,
    @Default(0) int coachId,
    @Default([]) List<QuestionEvaluationModel> evaluations,
  }) = _CreateEvaluationParams;

  factory CreateEvaluationParams.fromJson(Map<String, dynamic> json) =>
      _$CreateEvaluationParamsFromJson(json);
}
