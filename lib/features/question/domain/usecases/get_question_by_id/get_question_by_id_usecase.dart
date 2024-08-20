import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_question_by_id_usecase.freezed.dart';
part 'get_question_by_id_usecase.g.dart';

@lazySingleton
class GetQuestionByIdUsecase
    extends FPUC<QuestionModel, GetQuestionByIdParams> {
  final QuestionRepository _questionRepository;

  GetQuestionByIdUsecase(this._questionRepository);

  @override
  Future<Either<Failure, QuestionModel>> call(GetQuestionByIdParams params,
          {HttpCallback? callback}) =>
      _questionRepository.getById(params);
}

@freezed
class GetQuestionByIdParams with _$GetQuestionByIdParams {
  const factory GetQuestionByIdParams({
    required int id,
  }) = _GetQuestionByIdParams;

  const GetQuestionByIdParams._();

  factory GetQuestionByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetQuestionByIdParamsFromJson(json);
}
