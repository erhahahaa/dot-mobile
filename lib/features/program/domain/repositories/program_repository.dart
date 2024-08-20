import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class ProgramRepository {
  Future<Either<Failure, List<ProgramModel>>> getAll(
    GetAllProgramParams params,
  );
  Future<Either<Failure, ProgramModel>> getById(
    GetProgramByIdParams params,
  );
  Future<Either<Failure, ProgramModel>> create(
    CreateProgramParams params,
  );
  Future<Either<Failure, ProgramModel>> update(
    UpdateProgramParams params,
  );
  Future<Either<Failure, ProgramModel>> delete(
    DeleteProgramParams params,
  );
}
