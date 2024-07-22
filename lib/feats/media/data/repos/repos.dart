import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';

class MediaRepoImpl implements MediaRepo {
  final DioClient _remote;
  final IsarClient _local;

  MediaRepoImpl(this._remote, this._local);

  @override
  Future<Either<Failure, List<MediaModel>>> getAll(
    PaginationParams params,
    MediaParent parent,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.MEDIA}/${parent.value}',
      converter: (res) {
        final List<MediaModel> medias = [];
        for (final item in res['data']) {
          medias.add(MediaModel.fromJson(item));
        }
        return medias;
      },
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(() async {
        for (final media in r) {
          await _local.medias.put(media.toEntity());
        }
      }),
    );

    return res;
  }

  @override
  Future<Either<Failure, MediaModel>> update(
    UpsertMediaParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.MEDIA}/${params.parent.value}',
      formData: params.toFormData(),
      converter: (res) => MediaModel.fromJson(res['data']),
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(() async {
        await _local.medias.put(r.toEntity());
      }),
    );

    return res;
  }

  @override
  Future<Either<Failure, MediaModel>> upload(
    UpsertMediaParams params,
  ) async {
    final res = await _remote.postRequest(
      '${ListAPI.MEDIA}/${params.parent.value}',
      formData: params.toFormData(),
      converter: (res) => MediaModel.fromJson(res['data']),
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(() async {
        await _local.medias.put(r.toEntity());
      }),
    );

    return res;
  }

  @override
  Future<Either<Failure, File>> download(
    MediaModel params,
  ) async {
    const dir = '/storage/emulated/0/Download/DotCoaching';
    final dirExist = await Directory(dir).exists();
    if (!dirExist) {
      await Directory(dir).create(recursive: true);
    }
    final path = '$dir/${params.name}';

    final res = await _remote.downloadRequest(
      params.url.sanitize(),
      path,
    );

    return res;
  }
}
