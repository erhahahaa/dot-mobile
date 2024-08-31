import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeleteExamUsecase extends FPUC<ExamModel, DeleteExamParams> {
  final ExamRepository _examRepository;

  DeleteExamUsecase(this._examRepository);

  @override
  Future<Either<Failure, ExamModel>> call(DeleteExamParams params,
          {HttpCallback? callback}) =>
      _examRepository.delete(params);
}
