import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class UserRemoteDataSource {
  Future<Either<Failure, List<String>>> findUsernames(
    FindUsernamesParams params,
  );
  Future<Either<Failure, UserModel>> updateProfile(
    UpdateProfileParams params,
  );
  Future<Either<Failure, List<UserModel>>> searchUser(
    SearchUsersParams params,
  );
  Future<Either<Failure, UserModel>> updateFCMToken(
    UpdateFCMTokenParams params,
  );
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioService _remote;

  UserRemoteDataSourceImpl(this._remote);

  @override
  Future<Either<Failure, List<String>>> findUsernames(
    FindUsernamesParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.USER}/find-username',
      queryParameters: params.toJson(),
      converter: (res) {
        List<String> data = [];
        if (res['message'] == 'Username not available') {
          for (var item in res['data']) {
            data.add(item);
          }
        }

        return data;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, List<UserModel>>> searchUser(
    SearchUsersParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.USER}/search',
      queryParameters: params.toJson(),
      converter: (res) {
        List<UserModel> data = [];
        for (var item in res['data']) {
          data.add(UserModel.fromJson(item));
        }

        return data;
      },
    );
    return res;
  }

  @override
  Future<Either<Failure, UserModel>> updateProfile(
    UpdateProfileParams params,
  ) async {
    Future<Either<Failure, UserModel>> update() async {
      return await _remote.putRequest(
        '${ListAPI.USER}/update',
        data: params.toJson(),
        converter: (res) => UserModel.fromJson(res['data']),
      );
    }

    if (params.image != null) {
      final photoUpdateRes = await _remote.putRequest(
        '${ListAPI.USER}/update-photo',
        formData: params.toFormData(),
        converter: (res) => UserModel.fromJson(res['data']),
      );
      return photoUpdateRes.fold(
        (l) => Left(l),
        (_) async {
          return await update();
        },
      );
    } else {
      return await update();
    }
  }

  @override
  Future<Either<Failure, UserModel>> updateFCMToken(
    UpdateFCMTokenParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.USER}/update-fcm-token',
      data: params.toJson(),
      converter: (res) => UserModel.fromJson(res['data']),
    );

    return res;
  }
}
