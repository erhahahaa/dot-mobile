import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_evaluation_param.freezed.dart';
part 'create_evaluation_param.g.dart';

@freezed
class CreateEvaluationParams with _$CreateEvaluationParams {
  const factory CreateEvaluationParams({
    @Default(0) int examId,
    @Default(0) int clubId,
    @Default(0) int questionId,
    @Default(0) int coachId,
    @Default(0) int athleteId,
    String? answer,
    int? score,
  }) = _CreateEvaluationParams;

  factory CreateEvaluationParams.fromJson(Map<String, dynamic> json) =>
      _$CreateEvaluationParamsFromJson(json);
}
