import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllExamUsecase extends FPUC<List<ExamModel>, GetAllExamParams> {
  final ExamRepository _examRepository;

  GetAllExamUsecase(this._examRepository);

  @override
  Future<Either<Failure, List<ExamModel>>> call(GetAllExamParams params,
          {HttpCallback? callback}) =>
      _examRepository.getAll(params);
}
