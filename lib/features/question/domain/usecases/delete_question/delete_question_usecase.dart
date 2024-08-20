import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_question_usecase.freezed.dart';
part 'delete_question_usecase.g.dart';

@lazySingleton
class DeleteQuestionUsecase extends FPUC<QuestionModel, DeleteQuestionParams> {
  final QuestionRepository _questionRepository;

  DeleteQuestionUsecase(this._questionRepository);

  @override
  Future<Either<Failure, QuestionModel>> call(DeleteQuestionParams params,
          {HttpCallback? callback}) =>
      _questionRepository.delete(params);
}

@freezed
class DeleteQuestionParams with _$DeleteQuestionParams {
  const factory DeleteQuestionParams({
    required int id,
  }) = _DeleteQuestionParams;

  const DeleteQuestionParams._();

  factory DeleteQuestionParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteQuestionParamsFromJson(json);
}
