import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_exam_params.freezed.dart';
part 'get_all_exam_params.g.dart';

@freezed
class GetAllExamParams with _$GetAllExamParams {
  const factory GetAllExamParams({
    required int clubId,
  }) = _GetAllExamParams;

  factory GetAllExamParams.fromJson(Map<String, dynamic> json) =>
      _$GetAllExamParamsFromJson(json);
}
