import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_media_usecase.freezed.dart';

@lazySingleton
class GetAllMediaUsecase extends FPUC<List<MediaModel>, GetAllMediaParams> {
  final MediaRepository _mediaRepository;

  GetAllMediaUsecase(this._mediaRepository);

  @override
  Future<Either<Failure, List<MediaModel>>> call(GetAllMediaParams params,
          {HttpCallback? callback}) =>
      _mediaRepository.getAll(params);
}

@freezed
class GetAllMediaParams with _$GetAllMediaParams {
  const factory GetAllMediaParams({
    required MediaParent parent,
    required int clubId,
    MediaType? type,
  }) = _GetAllMediaParams;
}
