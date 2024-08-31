import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetFcmTokenUsecase extends FNPUC<String> {
  final UserRepository _userRepository;

  GetFcmTokenUsecase(this._userRepository);

  @override
  Future<Either<Failure, String>> call({HttpCallback? callback}) =>
      _userRepository.getFCMToken();
}
