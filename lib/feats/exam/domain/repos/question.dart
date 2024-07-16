import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class QuestionRepo {
  Future<Either<Failure, List<QuestionModel>>> getAll(
    PaginationParams params,
  );
  Future<Either<Failure, QuestionModel>> getById(
    ByIdParams params,
  );
  Future<Either<Failure, QuestionModel>> create(
    CreateQuestionParams params,
  );
  Future<Either<Failure, QuestionModel>> update(
    UpdateQuestionParams params,
  );
  Future<Either<Failure, QuestionModel>> delete(
    ByIdParams params,
  );
}
