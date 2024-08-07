import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class UserRepo {
  Future<Either<Failure, UserEntity>> getMe();
  Future<Either<Failure, UserPreferencesModel>> getUserPref();
  Future<Either<Failure, bool>> saveUserPref(UserPreferencesModel model);
  Future<Either<Failure, List<String>>> findUsername(
    String username,
    String email,
  );
  Future<Either<Failure, UserModel>> updateProfile(UpdateUserParams params);
  Future<Either<Failure, List<UserModel>>> search(String query);
  Future<bool> clear();
  Future<Either<Failure, UserModel>> updateFCMToken(String fcmToken);
  Future<Either<Failure, bool>> cacheNotification(
      NotificationDataModel notification);
  Future<Either<Failure, List<NotificationDataModel>>> getNotifications();
  Future<Either<Failure, bool>> clearNotifications();
}
