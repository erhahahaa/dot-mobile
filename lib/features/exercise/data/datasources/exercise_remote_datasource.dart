import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class ExerciseRemoteDatasource {
  Future<Either<Failure, List<ExerciseModel>>> getAll(
    GetAllExerciseParams params,
  );
  Future<Either<Failure, ExerciseModel>> getById(
    GetExerciseByIdParams params,
  );
  Future<Either<Failure, List<ExerciseModel>>> createBatch(
    List<CreateExerciseParams> params,
  );
  Future<Either<Failure, List<ExerciseModel>>> updateBatch(
    List<UpdateExerciseParams> params,
  );
  Future<Either<Failure, ExerciseModel>> delete(
    DeleteExerciseParams params,
  );
}

@LazySingleton(as: ExerciseRemoteDatasource)
class ExerciseRemoteDatasourceImpl implements ExerciseRemoteDatasource {
  final DioService _remote;

  ExerciseRemoteDatasourceImpl(this._remote);

  @override
  Future<Either<Failure, List<ExerciseModel>>> createBatch(
    List<CreateExerciseParams> params,
  ) async {
    final List<Map<String, dynamic>> body = [];
    for (final param in params) {
      body.add(param.toJson());
    }
    final res = await _remote.postRequest(
      '${ListAPI.EXERCISE}/bulk',
      listData: body,
      converter: (res) {
        final List<ExerciseModel> exercises = [];
        for (final data in res['data']) {
          exercises.add(ExerciseModel.fromJson(data));
        }
        return exercises;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ExerciseModel>> delete(
    DeleteExerciseParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.EXERCISE}/${params.id}',
      converter: (res) => ExerciseModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<ExerciseModel>>> getAll(
    GetAllExerciseParams params,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.EXERCISE,
      queryParameters: params.toJson(),
      converter: (res) {
        final List<ExerciseModel> exercises = [];
        for (final data in res['data']) {
          exercises.add(ExerciseModel.fromJson(data));
        }
        return exercises;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ExerciseModel>> getById(
    GetExerciseByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.EXERCISE}/${params.id}',
      converter: (res) => ExerciseModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<ExerciseModel>>> updateBatch(
    List<UpdateExerciseParams> params,
  ) async {
    List<CreateExerciseParams> createParams = [];
    final List<Map<String, dynamic>> body = [];
    for (final param in params) {
      if (param.id == 0) {
        createParams.add(CreateExerciseParams(
          programId: param.programId,
          mediaId: param.mediaId,
          name: param.name,
          description: param.description,
          repetition: param.repetition,
          sets: param.sets,
          rest: param.rest,
          tempo: param.tempo,
          intensity: param.intensity,
          order: param.order,
        ));
        continue;
      }
      body.add(param.toJson());
    }
    if (createParams.isNotEmpty) {
      await createBatch(createParams);
    }
    final res = await _remote.putRequest(
      '${ListAPI.EXERCISE}/bulk',
      listData: body,
      converter: (res) {
        final List<ExerciseModel> exercises = [];
        for (final data in res['data']) {
          exercises.add(ExerciseModel.fromJson(data));
        }
        return exercises;
      },
    );
    return res;
  }
}
