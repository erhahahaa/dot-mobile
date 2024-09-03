import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

abstract class AuthLocalDataSource {
  Future<UserEntity> getSignedInUser();
  Future<UserEntity?> cacheSignedInUser(UserModel user);
  Future<bool?> clearSignedInUser();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDatasourceImpl implements AuthLocalDataSource {
  final IsarService _isar;

  AuthLocalDatasourceImpl(this._isar);

  @override
  Future<UserEntity?> cacheSignedInUser(
    UserModel user,
  ) async {
    return await _isar.isar.writeAsync((isar) {
      isar.users.clear();
      isar.users.put(user);
      return isar.users.get(user.id);
    });
  }

  @override
  Future<bool?> clearSignedInUser() async {
    return await _isar.isar.writeAsync((isar) {
      isar.users.clear();
      return isar.users.count() == 0;
    });
  }

  @override
  Future<UserEntity> getSignedInUser() async {
    final user = await _isar.isar.users.where().findAllAsync();
    if (user.isEmpty) {
      throw CacheException();
    }
    return user.first;
  }
}
