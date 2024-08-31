import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_evaluation_usecase.freezed.dart';
part 'delete_evaluation_usecase.g.dart';

@lazySingleton
class DeleteEvaluationUsecase
    extends FPUC<EvaluationModel, DeleteEvaluationParams> {
  final EvaluationRepository _evaluationRepository;

  DeleteEvaluationUsecase(this._evaluationRepository);

  @override
  Future<Either<Failure, EvaluationModel>> call(DeleteEvaluationParams params,
          {HttpCallback? callback}) =>
      _evaluationRepository.delete(params);
}

@freezed
class DeleteEvaluationParams with _$DeleteEvaluationParams {
  const factory DeleteEvaluationParams({
    required int evaluationId,
  }) = _DeleteEvaluationParams;

  factory DeleteEvaluationParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteEvaluationParamsFromJson(json);
}
