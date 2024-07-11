import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:isar/isar.dart';

class UserRepoImpl implements UserRepo {
  final IsarClient _local;

  UserRepoImpl(this._local);

  @override
  Future<Either<Failure, UserEntity>> getMe() async {
    final res =
        await _local.isar.userEntitys.filter().idGreaterThan(0).findAll();

    log.i('Get local user:\n$res');
    if (res.isEmpty) {
      return const Left(StorageFailure(message: 'No user data found'));
    }

    return Right(res.first);
  }
}
