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

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.tacticals.delete(r.id),
      ),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<TacticalModel>>> getAll(
    PaginationParams params,
    int clubId,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.CLUB_TACTICAL,
      queryParameters: params.toJson()..addAll({'clubId': clubId}),
      converter: (res) {
        final List<TacticalModel> tacticals = [];
        for (final item in res['data']) {
          tacticals.add(TacticalModel.fromJson(item));
        }
        return tacticals;
      },
    );

    // res.fold(
    //   (l) => null,
    //   (r) => _local.isar.writeTxn(
    //     () async {
    //       for (final item in r) {
    //         await _local.tacticals.put(item.toEntity());
    //       }
    //     },
    //   ),
    // );

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

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.tacticals.put(r.toEntity()),
      ),
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

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.tacticals.put(r.toEntity()),
      ),
    );

    return res;
  }
}
