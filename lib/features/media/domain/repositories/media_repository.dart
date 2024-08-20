import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class MediaRepository {
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
