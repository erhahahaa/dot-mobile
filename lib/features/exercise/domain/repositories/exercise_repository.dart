import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class ExerciseRepository {
  Future<Either<Failure, List<ExerciseModel>>> getAll(
    GetAllExerciseParams params,
  );
  Future<Either<Failure, ExerciseModel>> getById(
    GetExerciseByIdParams params,
  );
  Future<Either<Failure, List<ExerciseModel>>> createBatch(
    List<CreateExerciseParams> params,
  );
  Future<Either<Failure, List<ExerciseModel>>> updateBatch(
    List<UpdateExerciseParams> params,
  );
  Future<Either<Failure, ExerciseModel>> delete(
    DeleteExerciseParams params,
  );
}
