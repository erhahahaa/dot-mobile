import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_exercise_by_id_usecase.freezed.dart';
part 'get_exercise_by_id_usecase.g.dart';

@lazySingleton
class GetExerciseByIdUsecase
    extends FPUC<ExerciseModel, GetExerciseByIdParams> {
  final ExerciseRepository _exerciseRepository;

  GetExerciseByIdUsecase(this._exerciseRepository);

  @override
  Future<Either<Failure, ExerciseModel>> call(GetExerciseByIdParams params,
          {HttpCallback? callback}) =>
      _exerciseRepository.getById(params);
}

@freezed
class GetExerciseByIdParams with _$GetExerciseByIdParams {
  const factory GetExerciseByIdParams({
    required int id,
  }) = _GetExerciseByIdParams;

  const GetExerciseByIdParams._();

  factory GetExerciseByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetExerciseByIdParamsFromJson(json);
}
