import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateExamUsecase extends FPUC<ExamModel, UpdateExamParams> {
  final ExamRepository _examRepository;

  UpdateExamUsecase(this._examRepository);

  @override
  Future<Either<Failure, ExamModel>> call(UpdateExamParams params,
          {HttpCallback? callback}) =>
      _examRepository.update(params);
}
