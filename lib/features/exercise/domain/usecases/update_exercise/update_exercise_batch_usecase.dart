import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateExerciseBatchUsecase
    extends FPUC<List<ExerciseModel>, List<UpdateExerciseParams>> {
  final ExerciseRepository _exerciseRepository;

  UpdateExerciseBatchUsecase(this._exerciseRepository);

  @override
  Future<Either<Failure, List<ExerciseModel>>> call(
          List<UpdateExerciseParams> params,
          {HttpCallback? callback}) =>
      _exerciseRepository.updateBatch(params);
}
