import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class UserRepository {
  // Almost Local
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

  // Almost Remote
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
  Future<Either<Failure, String>> getFCMToken();
}
