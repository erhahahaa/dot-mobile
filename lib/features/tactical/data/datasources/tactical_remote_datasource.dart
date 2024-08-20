import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class TacticalRemoteDatasource {
  Future<Either<Failure, List<TacticalModel>>> getAll(
    GetAllTacticalParams params,
  );
  Future<Either<Failure, TacticalModel>> getById(
    GetTacticalByIdParams params,
  );
  Future<Either<Failure, TacticalModel>> create(
    CreateTacticalParams params,
  );
  Future<Either<Failure, TacticalModel>> update(
    UpdateTacticalParams params,
  );
  Future<Either<Failure, TacticalModel>> delete(
    DeleteTacticalParams params,
  );
}

@LazySingleton(as: TacticalRemoteDatasource)
class TacticalRemoteDatasourceImpl implements TacticalRemoteDatasource {
  final DioService _remote;

  TacticalRemoteDatasourceImpl(this._remote);

  @override
  Future<Either<Failure, TacticalModel>> create(
    CreateTacticalParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.TACTICAL,
      data: params.toJson(),
      converter: (res) => TacticalModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, TacticalModel>> delete(
    DeleteTacticalParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.TACTICAL}/${params.tacticalId}',
      converter: (res) => TacticalModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<TacticalModel>>> getAll(
    GetAllTacticalParams params,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.TACTICAL,
      queryParameters: params.toJson(),
      converter: (res) {
        final data = res['data'] as List;
        return data.map((e) => TacticalModel.fromJson(e)).toList();
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, TacticalModel>> getById(
    GetTacticalByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.TACTICAL}/${params.tacticalId}',
      converter: (res) => TacticalModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, TacticalModel>> update(
    UpdateTacticalParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.TACTICAL}/${params.id}',
      data: params.toJson(),
      converter: (res) => TacticalModel.fromJson(res['data']),
    );

    return res;
  }
}
