import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class ExamRepository {
  Future<Either<Failure, List<ExamModel>>> getAll(
    GetAllExamParams params,
  );
  Future<Either<Failure, ExamModel>> getById(
    GetExamByIdParams params,
  );
  Future<Either<Failure, ExamModel>> create(
    CreateExamParams params,
  );
  Future<Either<Failure, ExamModel>> update(
    UpdateExamParams params,
  );
  Future<Either<Failure, ExamModel>> delete(
    DeleteExamParams params,
  );
}
