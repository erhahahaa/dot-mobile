import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_evaluation_usecase.freezed.dart';
part 'update_evaluation_usecase.g.dart';

@lazySingleton
class UpdateEvaluationUsecase
    extends FPUC<EvaluationModel, UpdateEvaluationParams> {
  final EvaluationRepository _evaluationRepository;

  UpdateEvaluationUsecase(this._evaluationRepository);

  @override
  Future<Either<Failure, EvaluationModel>> call(UpdateEvaluationParams params,
          {HttpCallback? callback}) =>
      _evaluationRepository.update(params);
}

@freezed
class UpdateEvaluationParams with _$UpdateEvaluationParams {
  const factory UpdateEvaluationParams({
    required int id,
    required int clubId,
    required int examId,
    required int athleteId,
    required int coachId,
    required List<QuestionEvaluationModel> evaluations,
  }) = _UpdateEvaluationParams;

  const UpdateEvaluationParams._();

  factory UpdateEvaluationParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateEvaluationParamsFromJson(json);
}
