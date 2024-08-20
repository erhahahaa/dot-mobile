import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateExamUsecase extends FPUC<ExamModel, CreateExamParams> {
  final ExamRepository _examRepository;

  CreateExamUsecase(this._examRepository);

  @override
  Future<Either<Failure, ExamModel>> call(CreateExamParams params,
          {HttpCallback? callback}) =>
      _examRepository.create(params);
}
