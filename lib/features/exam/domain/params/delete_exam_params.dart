import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_exam_params.freezed.dart';
part 'delete_exam_params.g.dart';

@freezed
class DeleteExamParams with _$DeleteExamParams {
  const factory DeleteExamParams({
    required int examId,
  }) = _DeleteExamParams;

  factory DeleteExamParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteExamParamsFromJson(json);
}
