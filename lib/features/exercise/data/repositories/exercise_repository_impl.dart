import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/errors/failure.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ExerciseRepository)
class ExerciseRepositoryImpl implements ExerciseRepository {
  final ExerciseRemoteDatasource _remote;

  ExerciseRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, List<ExerciseModel>>> createBatch(
    List<CreateExerciseParams> params,
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
  Future<Either<Failure, ExerciseModel>> delete(
    DeleteExerciseParams params,
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
  Future<Either<Failure, List<ExerciseModel>>> getAll(
    GetAllExerciseParams params,
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
  Future<Either<Failure, ExerciseModel>> getById(
    GetExerciseByIdParams params,
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
  Future<Either<Failure, List<ExerciseModel>>> updateBatch(
    List<UpdateExerciseParams> params,
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
