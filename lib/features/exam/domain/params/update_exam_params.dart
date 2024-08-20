import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_exam_params.freezed.dart';
part 'update_exam_params.g.dart';

@freezed
class UpdateExamParams with _$UpdateExamParams {
  const factory UpdateExamParams({
    required int id,
    required int clubId,
    required String title,
    required String? description,
    required DateTime? endDate,
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
