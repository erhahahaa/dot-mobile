import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateQuestionBatchUsecase
    extends FPUC<List<QuestionModel>, List<CreateQuestionParams>> {
  final QuestionRepository _questionRepository;

  CreateQuestionBatchUsecase(this._questionRepository);

  @override
  Future<Either<Failure, List<QuestionModel>>> call(
          List<CreateQuestionParams> params,
          {HttpCallback? callback}) =>
      _questionRepository.createBatch(params);
}
