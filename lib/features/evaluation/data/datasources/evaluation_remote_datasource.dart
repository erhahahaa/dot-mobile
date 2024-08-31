import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class EvaluationRemoteDatasource {
  Future<Either<Failure, List<EvaluationModel>>> getAll(
    GetAllEvaluationParams params,
  );
  Future<Either<Failure, EvaluationModel>> getById(
    GetEvaluationByIdParams params,
  );
  Future<Either<Failure, EvaluationModel>> create(
    CreateEvaluationParams params,
  );
  Future<Either<Failure, EvaluationModel>> update(
    UpdateEvaluationParams params,
  );
  Future<Either<Failure, EvaluationModel>> delete(
    DeleteEvaluationParams params,
  );
}

@LazySingleton(as: EvaluationRemoteDatasource)
class EvaluationRemoteDatasourceImpl implements EvaluationRemoteDatasource {
  final DioService _remote;

  EvaluationRemoteDatasourceImpl(this._remote);

  @override
  Future<Either<Failure, EvaluationModel>> create(
    CreateEvaluationParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.EVALUATION,
      data: params.toJson(),
      converter: (res) => EvaluationModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, EvaluationModel>> delete(
    DeleteEvaluationParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.EVALUATION}/${params.evaluationId}',
      converter: (res) => EvaluationModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<EvaluationModel>>> getAll(
    GetAllEvaluationParams params,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.EVALUATION,
      queryParameters: params.toJson(),
      converter: (res) {
        final data = res['data'] as List;
        return data.map((e) => EvaluationModel.fromJson(e)).toList();
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, EvaluationModel>> getById(
    GetEvaluationByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.EVALUATION}/${params.evaluationId}',
      converter: (res) => EvaluationModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, EvaluationModel>> update(
    UpdateEvaluationParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.EVALUATION}/${params.id}',
      data: params.toJson(),
      converter: (res) => EvaluationModel.fromJson(res['data']),
    );

    return res;
  }
}
