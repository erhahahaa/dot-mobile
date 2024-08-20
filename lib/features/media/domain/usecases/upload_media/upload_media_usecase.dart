import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_media_usecase.freezed.dart';

@lazySingleton
class UploadMediaUsecase extends FPUC<MediaModel, UploadMediaParams> {
  final MediaRepository _mediaRepository;

  UploadMediaUsecase(this._mediaRepository);

  @override
  Future<Either<Failure, MediaModel>> call(UploadMediaParams params,
          {HttpCallback? callback}) =>
      _mediaRepository.upload(params);
}

@freezed
class UploadMediaParams with _$UploadMediaParams {
  const factory UploadMediaParams({
    required int id,
    required File file,
    required MediaParent parent,
    required int clubId,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) = _UploadMediaParams;

  const UploadMediaParams._();

  FormData toFormData() => FormData.fromMap({
        'file': MultipartFile.fromFileSync(file.path),
      });
}
