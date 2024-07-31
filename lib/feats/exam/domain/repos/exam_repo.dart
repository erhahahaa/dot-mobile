import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class ExamRepo {
  Future<Either<Failure, List<ExamModel>>> getAll(
    PaginationParams params,
    int clubId,
  );
  Future<Either<Failure, ExamModel>> getById(
    ByIdParams params,
  );
  Future<Either<Failure, ExamModel>> create(
    CreateExamParams params,
  );
  Future<Either<Failure, ExamModel>> update(
    UpdateExamParams params,
  );
  Future<Either<Failure, ExamModel>> delete(
    ByIdParams params,
  );
}
