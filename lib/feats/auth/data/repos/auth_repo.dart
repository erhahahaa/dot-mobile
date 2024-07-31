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
      converter: (res) => UserModel.fromJson(res['data']),
    );

    res.fold((l) => null, (r) async {
      await _local.isar.writeTxn(() async {
        await _local.isar.userEntitys.clear();
        await _local.isar.userEntitys.put(UserEntity(
          id: r.id,
          name: r.name,
          email: r.email,
          username: r.username,
          image: r.image,
          phone: r.phone,
          role: r.role,
          bornPlace: r.bornPlace,
          bornDate: r.bornDate,
          religion: r.religion,
          address: r.address,
          expertise: r.expertise,
          createdAt: r.createdAt,
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
      converter: (res) => UserModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, UserModel>> me() async {
    final res = await _remote.getRequest(
      ListAPI.AUTH_ME,
      converter: (res) => UserModel.fromJson(res['data']),
    );

    res.fold(
      (l) async {
        if (l.message.contains('User with id') &&
            l.message.contains('not found')) {
          await _local.isar.writeTxn(() async {
            await _local.isar.userEntitys.clear();
          });
        }
      },
      (r) async {
        await _local.isar.writeTxn(() async {
          await _local.isar.userEntitys.clear();
          await _local.isar.userEntitys.put(UserEntity(
            id: r.id,
            name: r.name,
            email: r.email,
            username: r.username,
            image: r.image,
            phone: r.phone,
            role: r.role,
            bornPlace: r.bornPlace,
            bornDate: r.bornDate,
            religion: r.religion,
            address: r.address,
            expertise: r.expertise,
            createdAt: r.createdAt,
            token: r.token,
          ));
        });
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    await _local.isar.writeTxn(() async {
      await _local.isar.userEntitys.clear();
    });

    final res = await _local.isar.txn(
      () async => await _local.isar.userEntitys.count(),
    );

    if (res == 0) {
      return Right(true);
    } else {
      return Left(StorageFailure(message: 'Failed to logout'));
    }
  }
}
