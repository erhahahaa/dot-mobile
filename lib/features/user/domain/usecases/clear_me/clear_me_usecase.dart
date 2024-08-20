import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClearMeUsecase extends FNPUC<bool> {
  final UserRepository _userRepository;

  ClearMeUsecase(this._userRepository);

  @override
  Future<Either<Failure, bool>> call({HttpCallback? callback}) =>
      _userRepository.clearMe();
}
