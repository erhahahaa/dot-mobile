import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_evaluation_usecase.freezed.dart';
part 'create_evaluation_usecase.g.dart';

@lazySingleton
class CreateEvaluationUsecase
    extends FPUC<EvaluationModel, CreateEvaluationParams> {
  final EvaluationRepository _evaluationRepository;

  CreateEvaluationUsecase(this._evaluationRepository);

  @override
  Future<Either<Failure, EvaluationModel>> call(CreateEvaluationParams params,
          {HttpCallback? callback}) =>
      _evaluationRepository.create(params);
}

@freezed
class CreateEvaluationParams with _$CreateEvaluationParams {
  const factory CreateEvaluationParams({
    required int clubId,
    required int examId,
    required int athleteId,
    required int coachId,
    required List<QuestionEvaluationModel> evaluations,
  }) = _CreateEvaluationParams;

  const CreateEvaluationParams._();

  factory CreateEvaluationParams.fromJson(Map<String, dynamic> json) =>
      _$CreateEvaluationParamsFromJson(json);
}
