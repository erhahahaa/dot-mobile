import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

class TacticalRepoImpl implements TacticalRepo {
  final DioClient _remote;
  final IsarClient _local;

  TacticalRepoImpl(this._remote, this._local);

  @override
  Future<Either<Failure, TacticalModel>> create(
    CreateTacticalParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.CLUB_TACTICAL,
      data: params.toJson(),
      converter: (res) => TacticalModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, TacticalModel>> delete(
    ByIdParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.CLUB_TACTICAL}/${params.id}',
      converter: (res) => TacticalModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<TacticalModel>>> getAll(
    PaginationParams params,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.CLUB_TACTICAL,
      converter: (res) {
        final List<TacticalModel> tacticals = [];
        for (final item in res['data']) {
          tacticals.add(TacticalModel.fromJson(item));
        }
        return tacticals;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, TacticalModel>> getById(
    ByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB_TACTICAL}/${params.id}',
      converter: (res) => TacticalModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, TacticalModel>> update(
    UpdateTacticalParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.CLUB_TACTICAL}/${params.id}',
      data: params.toJson(),
      converter: (res) => TacticalModel.fromJson(res['data']),
    );

    return res;
  }
}
