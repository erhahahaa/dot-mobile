import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_program_param.freezed.dart';
part 'create_program_param.g.dart';

@freezed
class CreateProgramParams with _$CreateProgramParams {
  const factory CreateProgramParams({
    @Default(0) int clubId,
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) File? image,
  }) = _CreateProgramParams;
  const CreateProgramParams._();

  factory CreateProgramParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProgramParamsFromJson(json);

  FormData toFormData() => FormData.fromMap({
        'image': image != null ? MultipartFile.fromFileSync(image!.path) : null,
      });
}
