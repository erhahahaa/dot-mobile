import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_exercise_usecase.freezed.dart';
part 'delete_exercise_usecase.g.dart';

@lazySingleton
class DeleteExerciseUsecase extends FPUC<ExerciseModel, DeleteExerciseParams> {
  final ExerciseRepository _exerciseRepository;

  DeleteExerciseUsecase(this._exerciseRepository);

  @override
  Future<Either<Failure, ExerciseModel>> call(DeleteExerciseParams params,
          {HttpCallback? callback}) =>
      _exerciseRepository.delete(params);
}

@freezed
class DeleteExerciseParams with _$DeleteExerciseParams {
  const factory DeleteExerciseParams({
    required int id,
  }) = _DeleteExerciseParams;

  const DeleteExerciseParams._();

  factory DeleteExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteExerciseParamsFromJson(json);
}
