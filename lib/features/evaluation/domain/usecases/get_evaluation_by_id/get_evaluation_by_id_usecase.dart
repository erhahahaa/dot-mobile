import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_evaluation_by_id_usecase.freezed.dart';
part 'get_evaluation_by_id_usecase.g.dart';

@lazySingleton
class GetEvaluationByIdUsecase
    extends FPUC<EvaluationModel, GetEvaluationByIdParams> {
  final EvaluationRepository _evaluationRepository;

  GetEvaluationByIdUsecase(this._evaluationRepository);

  @override
  Future<Either<Failure, EvaluationModel>> call(GetEvaluationByIdParams params,
          {HttpCallback? callback}) =>
      _evaluationRepository.getById(params);
}

@freezed
class GetEvaluationByIdParams with _$GetEvaluationByIdParams {
  const factory GetEvaluationByIdParams({
    required int evaluationId,
  }) = _GetEvaluationByIdParams;

  factory GetEvaluationByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetEvaluationByIdParamsFromJson(json);
}
