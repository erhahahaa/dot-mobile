import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetExamByIdUsecase extends FPUC<ExamModel, GetExamByIdParams> {
  final ExamRepository _examRepository;

  GetExamByIdUsecase(this._examRepository);

  @override
  Future<Either<Failure, ExamModel>> call(GetExamByIdParams params,
          {HttpCallback? callback}) =>
      _examRepository.getById(params);
}
