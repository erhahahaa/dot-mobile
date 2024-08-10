import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class EvaluationRepo {
  Future<Either<Failure, List<EvaluationModel>>> getAll(
    PaginationParams params,
    int clubId,
  );
  Future<Either<Failure, EvaluationModel>> getById(
    ByIdParams params,
  );
  Future<Either<Failure, EvaluationModel>> create(
    CreateEvaluationParams params,
  );
  Future<Either<Failure, EvaluationModel>> update(
    UpdateEvaluationParams params,
  );
  Future<Either<Failure, EvaluationModel>> delete(
    ByIdParams params,
  );
}
