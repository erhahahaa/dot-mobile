import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cache_notifications_usecase.freezed.dart';

@lazySingleton
class CacheNotificationsUsecase extends FPUC<bool, CacheNotificationsParams> {
  final UserRepository _userRepository;

  CacheNotificationsUsecase(this._userRepository);

  @override
  Future<Either<Failure, bool>> call(CacheNotificationsParams params,
          {HttpCallback? callback}) =>
      _userRepository.cacheNotification(params);
}

@freezed
class CacheNotificationsParams with _$CacheNotificationsParams {
  const factory CacheNotificationsParams({
    required NotificationDataModel notification,
  }) = _CacheNotificationsParams;
}
