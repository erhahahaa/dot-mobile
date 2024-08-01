import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class ExerciseRepo {
  Future<Either<Failure, List<ProgramExerciseModel>>> getAll(
    PaginationParams params,
    int programId,
  );
  Future<Either<Failure, ProgramExerciseModel>> getById(
    ByIdParams params,
  );
  Future<Either<Failure, List<ProgramExerciseModel>>> createBulk(
    List<CreateProgramExerciseParams> params,
  );
  Future<Either<Failure, List<ProgramExerciseModel>>> updateBulk(
    List<UpdateProgramExerciseParams> params,
  );
  Future<Either<Failure, ProgramExerciseModel>> delete(
    ByIdParams params,
  );
}
