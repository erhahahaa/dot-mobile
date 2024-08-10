import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class MediaRepo {
  Future<Either<Failure, List<MediaModel>>> getAll(
    PaginationParams params,
    MediaParent parent,
    int clubId,
  );
  Future<Either<Failure, MediaModel>> upload(
    UpsertMediaParams params, {
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  });
  Future<Either<Failure, MediaModel>> update(
    UpsertMediaParams params,
  );
  Future<Either<Failure, File>> download(
    MediaModel params,
  );
}
