import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

class AuthRepoImpl implements AuthRepo {
  final DioClient _remote;
  final IsarClient _local;

  AuthRepoImpl(this._remote, this._local);

  @override
  Future<Either<Failure, UserModel>> signIn(
    LoginParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.AUTH_SIGN_IN,
      data: params.toJson(),
      converter: (response) => UserModel.fromJson(response['data']),
    );

    res.fold((l) => null, (r) async {
      await _local.isar.writeTxn(() async {
        await _local.isar.userEntitys.clear();
        await _local.isar.userEntitys.put(UserEntity(
          id: r.id ?? 0,
          email: r.email,
          name: r.name,
          token: r.token,
        ));
      });
    });
    return res;
  }

  @override
  Future<Either<Failure, UserModel>> signUp(
    RegisterParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.AUTH_SIGN_UP,
      data: params.toJson(),
      converter: (response) => UserModel.fromJson(response['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, UserModel>> me() async {
    final res = await _remote.getRequest(
      ListAPI.AUTH_ME,
      converter: (response) => UserModel.fromJson(response['data']),
    );

    res.fold(
      (l) => null,
      (r) async {
        await _local.isar.writeTxn(() async {
          await _local.isar.userEntitys.clear();
          await _local.isar.userEntitys.put(UserEntity(
            id: r.id ?? 0,
            email: r.email,
            name: r.name,
            token: r.token,
          ));
        });
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    final res = await _remote.getRequest(
      ListAPI.AUTH_LOGOUT,
      converter: (response) => true,
    );

    res.fold(
      (l) => null,
      (r) async => await _local.isar.writeTxn(() async {
        await _local.isar.userEntitys.clear();
      }),
    );

    return res;
  }
}
