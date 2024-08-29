import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class ExamRemoteDatasource {
  Future<Either<Failure, List<ExamModel>>> getAll(
    GetAllExamParams params,
  );
  Future<Either<Failure, ExamModel>> getById(
    GetExamByIdParams params,
  );
  Future<Either<Failure, ExamModel>> create(
    CreateExamParams params,
  );
  Future<Either<Failure, ExamModel>> update(
    UpdateExamParams params,
  );
  Future<Either<Failure, ExamModel>> delete(
    DeleteExamParams params,
  );
}

@LazySingleton(as: ExamRemoteDatasource)
class ExamRemoteDatasourceImpl implements ExamRemoteDatasource {
  final DioService _remote;

  ExamRemoteDatasourceImpl(this._remote);

  @override
  Future<Either<Failure, ExamModel>> create(
    CreateExamParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.EXAM,
      data: params.toJson(),
      converter: (res) => ExamModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, ExamModel>> delete(
    DeleteExamParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.EXAM}/${params.examId}',
      converter: (res) => ExamModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<ExamModel>>> getAll(
    GetAllExamParams params,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.EXAM,
      queryParameters: params.toJson(),
      converter: (res) {
        final data = res['data'] as List;
        return data.map((e) => ExamModel.fromJson(e)).toList();
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ExamModel>> getById(
    GetExamByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.EXAM}/${params.examId}',
      converter: (res) => ExamModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, ExamModel>> update(
    UpdateExamParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.EXAM}/${params.id}',
      formData: params.toFormData(),
      converter: (res) => ExamModel.fromJson(res['data']),
    );

    return res;
  }
}
