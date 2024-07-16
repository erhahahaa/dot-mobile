import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_exam.freezed.dart';
part 'update_exam.g.dart';

@freezed
class UpdateExamParams with _$UpdateExamParams {
  const factory UpdateExamParams({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default('') String name,
    @Default('') String description,
    DateTime? dueAt,
  }) = _UpdateExamParams;

  factory UpdateExamParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateExamParamsFromJson(json);
}
