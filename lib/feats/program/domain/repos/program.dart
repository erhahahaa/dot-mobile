import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class ProgramRepo {
  Future<Either<Failure, List<ProgramModel>>> getAll(
    PaginationParams params,
    int clubId,
  );
  Future<Either<Failure, ProgramModel>> getById(
    ByIdParams params,
  );
  Future<Either<Failure, ProgramModel>> create(
    CreateProgramParams params,
  );
  Future<Either<Failure, ProgramModel>> update(
    UpdateProgramParams params,
  );
  Future<Either<Failure, ProgramModel>> delete(
    ByIdParams params,
  );
}
