import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

class UserRepoImpl implements UserRepo {
  final IsarClient _local;

  UserRepoImpl(this._local);

  @override
  Future<Either<Failure, UserEntity>> getMe() async {
    final res =
        await _local.isar.userEntitys.filter().tokenIsNotEmpty().findAll();

    if (res.isEmpty) {
      return const Left(StorageFailure(message: 'No user data found'));
    }

    return Right(res.last);
  }

  @override
  Future<bool> clear() async {
    await _local.isar.writeTxn(() async {
      await _local.isar.userEntitys.clear();
    });

    final check = await _local.isar.txn(() async {
      return await _local.isar.userEntitys.where().findAll();
    });

    return check.isEmpty;
  }
}
