import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TacticalRepository)
class TacticalRepositoryImpl implements TacticalRepository {
  final TacticalRemoteDatasource _remote;

  TacticalRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, TacticalModel>> create(
    CreateTacticalParams params,
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
  Future<Either<Failure, TacticalModel>> delete(
    DeleteTacticalParams params,
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
  Future<Either<Failure, List<TacticalModel>>> getAll(
    GetAllTacticalParams params,
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
  Future<Either<Failure, TacticalModel>> getById(
    GetTacticalByIdParams params,
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
  Future<Either<Failure, TacticalModel>> update(
    UpdateTacticalParams params,
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
