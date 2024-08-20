import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/errors/failure.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: QuestionRepository)
class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionRemoteDatasource _remote;

  QuestionRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, List<QuestionModel>>> createBatch(
    List<CreateQuestionParams> params,
  ) async {
    final res = await _remote.createBatch(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, QuestionModel>> delete(
    DeleteQuestionParams params,
  ) async {
    final res = await _remote.delete(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, List<QuestionModel>>> getAll(
    GetAllQuestionParams params,
  ) async {
    final res = await _remote.getAll(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, QuestionModel>> getById(
    GetQuestionByIdParams params,
  ) async {
    final res = await _remote.getById(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, List<QuestionModel>>> updateBatch(
    List<UpdateQuestionParams> params,
  ) async {
    final res = await _remote.updateBatch(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }
}
