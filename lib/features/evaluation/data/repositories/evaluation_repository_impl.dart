import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: EvaluationRepository)
class EvaluationRepositoryImpl implements EvaluationRepository {
  final EvaluationRemoteDatasource _remote;

  EvaluationRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, EvaluationModel>> create(
    CreateEvaluationParams params,
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
  Future<Either<Failure, EvaluationModel>> delete(
    DeleteEvaluationParams params,
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
  Future<Either<Failure, List<EvaluationModel>>> getAll(
    GetAllEvaluationParams params,
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
  Future<Either<Failure, EvaluationModel>> getById(
    GetEvaluationByIdParams params,
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
  Future<Either<Failure, EvaluationModel>> update(
    UpdateEvaluationParams params,
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
