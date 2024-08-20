import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProgramRepository)
class ProgramRepositoryImpl implements ProgramRepository {
  final ProgramRemoteDatasource _remote;

  ProgramRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, ProgramModel>> create(
    CreateProgramParams params,
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
  Future<Either<Failure, ProgramModel>> delete(
    DeleteProgramParams params,
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
  Future<Either<Failure, List<ProgramModel>>> getAll(
    GetAllProgramParams params,
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
  Future<Either<Failure, ProgramModel>> getById(
    GetProgramByIdParams params,
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
  Future<Either<Failure, ProgramModel>> update(
    UpdateProgramParams params,
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
