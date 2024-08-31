import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetNotificationsUsecase extends FNPUC<List<NotificationDataModel>> {
  final UserRepository _userRepository;

  GetNotificationsUsecase(this._userRepository);

  @override
  Future<Either<Failure, List<NotificationDataModel>>> call(
          {HttpCallback? callback}) =>
      _userRepository.getNotifications();
}
