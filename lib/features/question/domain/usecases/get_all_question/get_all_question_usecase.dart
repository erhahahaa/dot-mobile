import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_question_usecase.freezed.dart';
part 'get_all_question_usecase.g.dart';

@lazySingleton
class GetAllQuestionUsecase
    extends FPUC<List<QuestionModel>, GetAllQuestionParams> {
  final QuestionRepository _questionRepository;

  GetAllQuestionUsecase(this._questionRepository);

  @override
  Future<Either<Failure, List<QuestionModel>>> call(GetAllQuestionParams params,
          {HttpCallback? callback}) =>
      _questionRepository.getAll(params);
}

@freezed
class GetAllQuestionParams with _$GetAllQuestionParams {
  const factory GetAllQuestionParams({
    required int examId,
  }) = _GetAllQuestionParams;

  const GetAllQuestionParams._();

  factory GetAllQuestionParams.fromJson(Map<String, dynamic> json) =>
      _$GetAllQuestionParamsFromJson(json);
}
