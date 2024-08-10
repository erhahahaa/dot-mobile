import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

class EvaluationRepoImpl implements EvaluationRepo {
  final DioClient _remote;
  final IsarClient _local;

  EvaluationRepoImpl(this._remote, this._local);

  @override
  Future<Either<Failure, EvaluationModel>> create(
    CreateEvaluationParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.CLUB_EXAM_EVALUATION,
      data: params.toJson(),
      converter: (res) => EvaluationModel.fromJson(res['data']),
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(() async {
        await _local.evaluations.put(r.toEntity());
      }),
    );

    return res;
  }

  @override
  Future<Either<Failure, EvaluationModel>> delete(
    ByIdParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.CLUB_EXAM_EVALUATION}/${params.id}',
      converter: (res) => EvaluationModel.fromJson(res['data']),
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.evaluations.delete(r.id),
      ),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<EvaluationModel>>> getAll(
    PaginationParams params,
    int examId,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.CLUB_EXAM_EVALUATION,
      queryParameters: {
        'examId': examId,
      },
      converter: (res) {
        final List<EvaluationModel> evaluations = [];
        for (final item in res['data']) {
          evaluations.add(EvaluationModel.fromJson(item));
        }
        return evaluations;
      },
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(() async {
        for (final item in r) {
          await _local.evaluations.put(item.toEntity());
        }
      }),
    );

    return res;
  }

  @override
  Future<Either<Failure, EvaluationModel>> getById(
    ByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB_EXAM_EVALUATION}/${params.id}',
      converter: (res) => EvaluationModel.fromJson(res['data']),
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.evaluations.put(r.toEntity()),
      ),
    );

    return res;
  }

  @override
  Future<Either<Failure, EvaluationModel>> update(
    UpdateEvaluationParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.CLUB_EXAM_EVALUATION}/${params.id}',
      data: params.toJson(),
      converter: (res) => EvaluationModel.fromJson(res['data']),
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.evaluations.put(r.toEntity()),
      ),
    );

    return res;
  }
}
