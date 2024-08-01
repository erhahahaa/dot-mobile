import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exam_param.freezed.dart';
part 'create_exam_param.g.dart';

@freezed
class CreateExamParams with _$CreateExamParams {
  const factory CreateExamParams({
    @Default(0) int clubId,
    @Default('') String title,
    String? description,
    DateTime? dueAt,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) File? image,
  }) = _CreateExamParams;

  const CreateExamParams._();

  factory CreateExamParams.fromJson(Map<String, dynamic> json) =>
      _$CreateExamParamsFromJson(json);

  FormData toFormData() => FormData.fromMap({
        'image': image != null ? MultipartFile.fromFileSync(image!.path) : null,
      });
}
