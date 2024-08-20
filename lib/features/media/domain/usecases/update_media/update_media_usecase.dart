import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_media_usecase.freezed.dart';

@lazySingleton
class UpdateMediaUsecase extends FPUC<MediaModel, UpdateMediaParams> {
  final MediaRepository _mediaRepository;

  UpdateMediaUsecase(this._mediaRepository);

  @override
  Future<Either<Failure, MediaModel>> call(UpdateMediaParams params,
          {HttpCallback? callback}) =>
      _mediaRepository.update(params);
}

@freezed
class UpdateMediaParams with _$UpdateMediaParams {
  const factory UpdateMediaParams({
    required int id,
    required File file,
    required MediaParent parent,
    required int clubId,
  }) = _UpdateMediaParams;

  const UpdateMediaParams._();

  FormData toFormData() => FormData.fromMap({
        'file': MultipartFile.fromFileSync(file.path),
      });
}
