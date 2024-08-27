import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'download_media_usecase.freezed.dart';

@lazySingleton
class DownloadMediaUsecase extends FPUC<File, DownloadMediaParams> {
  final MediaRepository _mediaRepository;

  DownloadMediaUsecase(this._mediaRepository);

  @override
  Future<Either<Failure, File>> call(DownloadMediaParams params,
          {HttpCallback? callback}) =>
      _mediaRepository.download(params);
}

@freezed
class DownloadMediaParams with _$DownloadMediaParams {
  const factory DownloadMediaParams({
    required MediaModel media,
    Function(int, int)? onReceiveProgress,
  }) = _DownloadMediaParams;

  const DownloadMediaParams._();
}
