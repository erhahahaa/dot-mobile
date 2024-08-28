import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:injectable/injectable.dart';

abstract class MediaRemoteDatasource {
  Future<Either<Failure, List<MediaModel>>> getAll(
    GetAllMediaParams params,
  );
  Future<Either<Failure, MediaModel>> upload(
    UploadMediaParams params,
  );
  Future<Either<Failure, MediaModel>> update(
    UpdateMediaParams params,
  );
  Future<Either<Failure, File>> download(
    DownloadMediaParams params,
  );
}

@LazySingleton(as: MediaRemoteDatasource)
class MediaRemoteDatasourceImpl implements MediaRemoteDatasource {
  final DioService _remote;

  MediaRemoteDatasourceImpl(this._remote);

  @override
  Future<Either<Failure, File>> download(
    DownloadMediaParams params,
  ) async {
    const dir = '/storage/emulated/0/Download/DayOfTraining';
    final dirExist = await Directory(dir).exists();
    if (!dirExist) {
      await Directory(dir).create(recursive: true);
    }
    final path = '$dir/${params.media.name}';

    final res = await _remote.downloadRequest(
      params.media.url,
      path,
      onReceiveProgress: params.onReceiveProgress,
    );
    return res;
  }

  @override
  Future<Either<Failure, List<MediaModel>>> getAll(
    GetAllMediaParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.MEDIA}/${params.parent.value}',
      queryParameters: {
        'clubId': params.clubId,
        'type': params.type?.value,
      }.removeNullValues(),
      converter: (res) {
        final List<MediaModel> medias = [];
        for (final item in res['data']) {
          medias.add(MediaModel.fromJson(item));
        }
        return medias;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, MediaModel>> update(
    UpdateMediaParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.MEDIA}/${params.parent.value}',
      formData: params.toFormData(),
      queryParameters: {
        'clubId': params.clubId,
      },
      converter: (res) => MediaModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, MediaModel>> upload(
    UploadMediaParams params,
  ) async {
    final res = await _remote.postRequest(
      '${ListAPI.MEDIA}/${params.parent.value}',
      formData: params.toFormData(),
      queryParameters: {
        'clubId': params.clubId,
      },
      onSendProgress: params.onSendProgress,
      onReceiveProgress: params.onReceiveProgress,
      converter: (res) => MediaModel.fromJson(res['data']),
    );

    return res;
  }
}
