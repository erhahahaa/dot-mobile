import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_evaluation_param.freezed.dart';
part 'update_evaluation_param.g.dart';

@freezed
class UpdateEvaluationParams with _$UpdateEvaluationParams {
  const factory UpdateEvaluationParams({
    @Default(0) int id,
    @Default(0) int examId,
    @Default(0) int clubId,
    @Default(0) int questionId,
    @Default(0) int coachId,
    String? answer,
    int? score,
  }) = _UpdateEvaluationParams;

  factory UpdateEvaluationParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateEvaluationParamsFromJson(json);
}
