import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ExamRepository)
class ExamRepositoryImpl implements ExamRepository {
  final ExamRemoteDatasource _remote;

  ExamRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, ExamModel>> create(
    CreateExamParams params,
  ) async {
    final res = await _remote.create(params);

    return res.fold(
      (failure) => Left(failure),
      (success) async {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, ExamModel>> delete(
    DeleteExamParams params,
  ) async {
    final res = await _remote.delete(params);

    return res.fold(
      (failure) => Left(failure),
      (success) async {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, List<ExamModel>>> getAll(
    GetAllExamParams params,
  ) async {
    final res = await _remote.getAll(params);

    return res.fold(
      (failure) => Left(failure),
      (success) async {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, ExamModel>> getById(
    GetExamByIdParams params,
  ) async {
    final res = await _remote.getById(params);

    return res.fold(
      (failure) => Left(failure),
      (success) async {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, ExamModel>> update(
    UpdateExamParams params,
  ) async {
    final res = await _remote.update(params);

    return res.fold(
      (failure) => Left(failure),
      (success) async {
        return Right(success);
      },
    );
  }
}
