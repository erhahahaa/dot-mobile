import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetMeUsecase extends FNPUC<UserEntity> {
  final UserRepository _userRepository;

  GetMeUsecase(this._userRepository);

  @override
  Future<Either<Failure, UserEntity>> call({HttpCallback? callback}) =>
      _userRepository.getMe();
}
