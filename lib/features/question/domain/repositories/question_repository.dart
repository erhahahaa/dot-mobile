import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class QuestionRepository {
  Future<Either<Failure, List<QuestionModel>>> getAll(
    GetAllQuestionParams params,
  );
  Future<Either<Failure, QuestionModel>> getById(
    GetQuestionByIdParams params,
  );
  Future<Either<Failure, List<QuestionModel>>> createBatch(
    List<CreateQuestionParams> params,
  );
  Future<Either<Failure, List<QuestionModel>>> updateBatch(
    List<UpdateQuestionParams> params,
  );
  Future<Either<Failure, QuestionModel>> delete(
    DeleteQuestionParams params,
  );
}
