import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

abstract class AuthLocalDataSource {
  Future<UserModel> getSignedInUser();
  void cacheSignedInUser(UserModel user);
  void clearSignedInUser();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDatasourceImpl implements AuthLocalDataSource {
  final IsarService _isar;

  AuthLocalDatasourceImpl(this._isar);

  @override
  void cacheSignedInUser(
    UserModel user,
  ) {
    _isar.isar?.write((isar) {
      _isar.isar?.users.clear();
      _isar.isar?.users.put(user.toEntity());
    });
  }

  @override
  void clearSignedInUser() {
    _isar.isar?.write((isar) {
      _isar.isar?.users.clear();
    });
  }

  @override
  Future<UserModel> getSignedInUser() async {
    final user = await _isar.isar?.users.where().findAllAsync();
    if (user == null) {
      throw CacheException();
    }
    if (user.isEmpty) {
      throw CacheException();
    }
    return UserModel.fromEntity(user.first);
  }
}
