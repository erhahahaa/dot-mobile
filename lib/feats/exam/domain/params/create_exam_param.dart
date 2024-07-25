import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exam_param.freezed.dart';
part 'create_exam_param.g.dart';

@freezed
class CreateExamParams with _$CreateExamParams {
  const factory CreateExamParams({
    @Default(0) int clubId,
    @Default('') String name,
    @Default('') String description,
    DateTime? dueAt,
  }) = _CreateExamParams;

  factory CreateExamParams.fromJson(Map<String, dynamic> json) =>
      _$CreateExamParamsFromJson(json);
}
