import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_exam_by_id_params.freezed.dart';
part 'get_exam_by_id_params.g.dart';

@freezed
class GetExamByIdParams with _$GetExamByIdParams {
  const factory GetExamByIdParams({
    required int examId,
  }) = _GetExamByIdParams;

  factory GetExamByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetExamByIdParamsFromJson(json);
}
