import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_evaluation_usecase.freezed.dart';
part 'get_all_evaluation_usecase.g.dart';

@lazySingleton
class GetAllEvaluationUsecase
    extends FPUC<List<EvaluationModel>, GetAllEvaluationParams> {
  final EvaluationRepository _evaluationRepository;

  GetAllEvaluationUsecase(this._evaluationRepository);

  @override
  Future<Either<Failure, List<EvaluationModel>>> call(
          GetAllEvaluationParams params,
          {HttpCallback? callback}) =>
      _evaluationRepository.getAll(params);
}

@freezed
class GetAllEvaluationParams with _$GetAllEvaluationParams {
  const factory GetAllEvaluationParams({
    required int clubId,
  }) = _GetAllEvaluationParams;

  factory GetAllEvaluationParams.fromJson(Map<String, dynamic> json) =>
      _$GetAllEvaluationParamsFromJson(json);
}
