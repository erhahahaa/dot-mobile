import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class ProgramRemoteDatasource {
  Future<Either<Failure, List<ProgramModel>>> getAll(
    GetAllProgramParams params,
  );
  Future<Either<Failure, ProgramModel>> getById(
    GetProgramByIdParams params,
  );
  Future<Either<Failure, ProgramModel>> create(
    CreateProgramParams params,
  );
  Future<Either<Failure, ProgramModel>> update(
    UpdateProgramParams params,
  );
  Future<Either<Failure, ProgramModel>> delete(
    DeleteProgramParams params,
  );
}

@LazySingleton(as: ProgramRemoteDatasource)
class ProgramRemoteDatasourceImpl implements ProgramRemoteDatasource {
  final DioService _remote;

  ProgramRemoteDatasourceImpl(this._remote);

  @override
  Future<Either<Failure, ProgramModel>> create(
    CreateProgramParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.PROGRAM,
      data: params.toJson(),
      converter: (res) => ProgramModel.fromJson(res['data']),
    );

    return res.fold(
      (failure) => Left(failure),
      (success) async {
        if (params.image != null) {
          final photoUpdateRes = await _remote.putRequest(
            '${ListAPI.PROGRAM}/${success.id}/image',
            formData: params.toFormData(),
            converter: (res) => ProgramModel.fromJson(res['data']),
          );

          return photoUpdateRes.fold(
            (failure) => Left(failure),
            (success) async {
              return Right(success);
            },
          );
        }
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, ProgramModel>> delete(
    DeleteProgramParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.PROGRAM}/${params.programId}',
      converter: (res) => ProgramModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<ProgramModel>>> getAll(
    GetAllProgramParams params,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.PROGRAM,
      queryParameters: params.toJson(),
      converter: (res) {
        final data = res['data'] as List;
        return data.map((e) => ProgramModel.fromJson(e)).toList();
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ProgramModel>> getById(
    GetProgramByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.PROGRAM}/${params.programId}',
      converter: (res) => ProgramModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, ProgramModel>> update(
    UpdateProgramParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.PROGRAM}/${params.id}',
      data: params.toJson(),
      converter: (res) => ProgramModel.fromJson(res['data']),
    );

    return res.fold(
      (failure) => Left(failure),
      (success) async {
        if (params.image != null) {
          final photoUpdateRes = await _remote.putRequest(
            '${ListAPI.PROGRAM}/${success.id}/image',
            formData: params.toFormData(),
            converter: (res) => ProgramModel.fromJson(res['data']),
          );

          return photoUpdateRes.fold(
            (failure) => Left(failure),
            (success) async {
              return Right(success);
            },
          );
        }
        return Right(success);
      },
    );
  }
}
