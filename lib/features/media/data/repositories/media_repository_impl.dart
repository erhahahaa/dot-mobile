import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/errors/failure.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MediaRepository)
class MediaRepositoryImpl implements MediaRepository {
  final MediaRemoteDatasource _remote;

  MediaRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, File>> download(
    DownloadMediaParams params,
  ) async {
    final res = await _remote.download(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, List<MediaModel>>> getAll(
    GetAllMediaParams params,
  ) async {
    final res = await _remote.getAll(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, MediaModel>> update(
    UpdateMediaParams params,
  ) async {
    final res = await _remote.update(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, MediaModel>> upload(
    UploadMediaParams params,
  ) async {
    final res = await _remote.upload(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }
}
