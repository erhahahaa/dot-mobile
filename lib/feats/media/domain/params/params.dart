import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.freezed.dart';

@freezed
class UpsertMediaParams with _$UpsertMediaParams {
  const factory UpsertMediaParams({
    required int id,
    required File file,
    required MediaParent parent,
  }) = _UpsertMediaParams;

  const UpsertMediaParams._();

  FormData toFormData() => FormData.fromMap({
        'file': MultipartFile.fromFileSync(file.path),
      });
}
