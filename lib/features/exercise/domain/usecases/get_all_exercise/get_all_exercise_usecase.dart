import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_exercise_usecase.freezed.dart';
part 'get_all_exercise_usecase.g.dart';

@lazySingleton
class GetAllExerciseUsecase
    extends FPUC<List<ExerciseModel>, GetAllExerciseParams> {
  final ExerciseRepository _exerciseRepository;

  GetAllExerciseUsecase(this._exerciseRepository);

  @override
  Future<Either<Failure, List<ExerciseModel>>> call(GetAllExerciseParams params,
          {HttpCallback? callback}) =>
      _exerciseRepository.getAll(params);
}

@freezed
class GetAllExerciseParams with _$GetAllExerciseParams {
  const factory GetAllExerciseParams({
    required int programId,
  }) = _GetAllExerciseParams;

  const GetAllExerciseParams._();

  factory GetAllExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$GetAllExerciseParamsFromJson(json);
}
