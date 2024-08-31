import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class EvaluationRepository {
  Future<Either<Failure, List<EvaluationModel>>> getAll(
    GetAllEvaluationParams params,
  );
  Future<Either<Failure, EvaluationModel>> getById(
    GetEvaluationByIdParams params,
  );
  Future<Either<Failure, EvaluationModel>> create(
    CreateEvaluationParams params,
  );
  Future<Either<Failure, EvaluationModel>> update(
    UpdateEvaluationParams params,
  );
  Future<Either<Failure, EvaluationModel>> delete(
    DeleteEvaluationParams params,
  );
}
