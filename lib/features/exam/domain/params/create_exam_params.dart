import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exam_params.freezed.dart';
part 'create_exam_params.g.dart';

@freezed
class CreateExamParams with _$CreateExamParams {
  const factory CreateExamParams({
    required int clubId,
    required String title,
    required String? description,
    required DateTime? endDate,
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
