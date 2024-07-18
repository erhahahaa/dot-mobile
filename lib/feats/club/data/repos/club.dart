import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

class ClubRepoImpl implements ClubRepo {
  final DioClient _remote;
  final IsarClient _local;

  ClubRepoImpl(this._remote, this._local);

  @override
  Future<Either<Failure, ClubModel>> create(
    CreateClubParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.CLUB,
      data: params.toJson(),
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> delete(
    ByIdParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.CLUB}/${params.id}',
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<ClubModel>>> getAll(
    PaginationParams params,
    int? creatorId,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.CLUB,
      queryParameters: creatorId != null ? {'creator_id': creatorId} : null,
      converter: (res) {
        final List<ClubModel> clubs = [];
        for (final item in res['data']) {
          clubs.add(ClubModel.fromJson(item));
        }
        return clubs;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> getById(
    ByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/${params.id}',
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> update(
    UpdateClubParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.CLUB}/${params.id}',
      data: params.toJson(),
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    return res;
  }
}
