import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateExerciseBatchUsecase
    extends FPUC<List<ExerciseModel>, List<CreateExerciseParams>> {
  final ExerciseRepository _exerciseRepository;

  CreateExerciseBatchUsecase(this._exerciseRepository);

  @override
  Future<Either<Failure, List<ExerciseModel>>> call(
          List<CreateExerciseParams> params,
          {HttpCallback? callback}) =>
      _exerciseRepository.createBatch(params);
}
