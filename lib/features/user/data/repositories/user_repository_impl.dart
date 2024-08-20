import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remote;
  final UserLocalDataSource _local;

  UserRepositoryImpl(this._remote, this._local);

  @override
  Future<Either<Failure, UserModel>> getMe() async {
    final res = await _local.getMe();
    return res;
  }

  @override
  Future<Either<Failure, UserPreferencesModel>> getUserPreferences() async {
    final res = await _local.getUserPreferences();
    return res;
  }

  @override
  Future<Either<Failure, bool>> saveUserPreferences(
    SaveUserPreferencesParams params,
  ) async {
    final res = await _local.saveUserPreferences(params);
    return res;
  }

  @override
  Future<Either<Failure, bool>> clearMe() async {
    final res = await _local.clearMe();
    return res;
  }

  @override
  Future<Either<Failure, bool>> cacheNotification(
    CacheNotificationsParams params,
  ) async {
    final res = await _local.cacheNotification(params);
    return res;
  }

  @override
  Future<Either<Failure, List<NotificationDataModel>>>
      getNotifications() async {
    final res = await _local.getNotifications();
    return res;
  }

  @override
  Future<Either<Failure, bool>> clearNotifications() async {
    final res = await _local.clearNotifications();
    return res;
  }

  @override
  Future<Either<Failure, List<String>>> findUsernames(
    FindUsernamesParams params,
  ) async {
    final res = await _remote.findUsernames(params);
    return res;
  }

  @override
  Future<Either<Failure, UserModel>> updateProfile(
    UpdateProfileParams params,
  ) async {
    final res = await _remote.updateProfile(params);
    return res;
  }

  @override
  Future<Either<Failure, List<UserModel>>> searchUser(
    SearchUsersParams params,
  ) async {
    final res = await _remote.searchUser(params);
    return res;
  }

  @override
  Future<Either<Failure, UserModel>> updateFCMToken(
    UpdateFCMTokenParams params,
  ) async {
    final res = await _remote.updateFCMToken(params);
    return res;
  }

  @override
  Future<Either<Failure, String>> getFCMToken() async {
    final res = await _local.getFCMToken();
    return res;
  }
}
