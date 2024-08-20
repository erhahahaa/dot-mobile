import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateQuestionBatchUsecase
    extends FPUC<List<QuestionModel>, List<UpdateQuestionParams>> {
  final QuestionRepository _questionRepository;

  UpdateQuestionBatchUsecase(this._questionRepository);

  @override
  Future<Either<Failure, List<QuestionModel>>> call(
          List<UpdateQuestionParams> params,
          {HttpCallback? callback}) =>
      _questionRepository.updateBatch(params);
}
