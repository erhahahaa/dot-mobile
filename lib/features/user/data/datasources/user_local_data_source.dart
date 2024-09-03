import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

abstract class UserLocalDataSource {
  Future<Either<Failure, UserEntity>> getMe();
  Future<Either<Failure, UserPreferencesModel>> getUserPreferences();
  Future<Either<Failure, bool>> saveUserPreferences(
    SaveUserPreferencesParams params,
  );
  Future<Either<Failure, bool>> clearMe();
  Future<Either<Failure, bool>> cacheNotification(
    CacheNotificationsParams params,
  );
  Future<Either<Failure, List<NotificationDataModel>>> getNotifications();
  Future<Either<Failure, bool>> clearNotifications();
  Future<Either<Failure, String>> getFCMToken();
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final IsarService _local;
  final FirebaseMessagingService _fcm;

  UserLocalDataSourceImpl(this._local, this._fcm);

  @override
  Future<Either<Failure, bool>> cacheNotification(
    CacheNotificationsParams params,
  ) async {
    await _local.isar.writeAsync((isar) {
      _local.isar.notifications.put(params.notification.toEntity());
    });

    return const Right(true);
  }

  @override
  Future<Either<Failure, bool>> clearMe() async {
    await _local.isar.writeAsync((isar) async {
      _local.isar.users.clear();
    });

    final check = await _local.isar.writeAsync((isar) {
      return isar.users.where().findAll();
    });

    if (check.isEmpty) {
      return const Right(true);
    } else {
      return const Left(StorageFailure(message: 'Failed to clear user'));
    }
  }

  @override
  Future<Either<Failure, bool>> clearNotifications() async {
    final res = await _local.isar.writeAsync((isar) {
      isar.notifications.clear();
      return true;
    });

    return Right(res);
  }

  @override
  Future<Either<Failure, UserEntity>> getMe() async {
    final res = await _local.isar.readAsync((isar) {
      return isar.users.where().tokenIsNotEmpty().findAll();
    });
    if (res.isEmpty) {
      return const Left(StorageFailure(message: 'No user data found'));
    }

    return Right(res.last);
  }

  @override
  Future<Either<Failure, List<NotificationDataModel>>>
      getNotifications() async {
    final res = await _local.isar.readAsync((isar) {
      return isar.notifications.where().findAll();
    });

    List<NotificationDataModel> data = [];
    for (var item in res) {
      data.add(NotificationDataModel.fromEntity(item));
    }

    return Right(data);
  }

  @override
  Future<Either<Failure, UserPreferencesModel>> getUserPreferences() async {
    final res = await _local.isar.readAsync((isar) {
      return isar.userPreferences.where().findAll();
    });

    if (res.isEmpty) {
      return const Left(StorageFailure(message: 'No user preferences found'));
    }

    return Right(UserPreferencesModel.fromEntity(res.last));
  }

  @override
  Future<Either<Failure, bool>> saveUserPreferences(
    SaveUserPreferencesParams params,
  ) async {
    final entity = params.prefs.toEntity();
    entity.id = 1;
    final res = await _local.isar.writeAsync((isar) {
      isar.userPreferences.put(entity);
      return true;
    });

    return Right(res);
  }

  @override
  Future<Either<Failure, String>> getFCMToken() async {
    final token = await _fcm.getFCMToken();
    if (token == null) {
      return const Left(FirebaseFailure(message: 'Failed to get FCM Token'));
    }

    return Right(token);
  }
}
