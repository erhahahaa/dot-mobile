import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_exam_param.freezed.dart';
part 'update_exam_param.g.dart';

@freezed
class UpdateExamParams with _$UpdateExamParams {
  const factory UpdateExamParams({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default('') String title,
    String? description,
    DateTime? dueAt,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) File? image,
  }) = _UpdateExamParams;

  const UpdateExamParams._();

  factory UpdateExamParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateExamParamsFromJson(json);

  FormData toFormData() => FormData.fromMap({
        'image': image != null ? MultipartFile.fromFileSync(image!.path) : null,
      });
}
