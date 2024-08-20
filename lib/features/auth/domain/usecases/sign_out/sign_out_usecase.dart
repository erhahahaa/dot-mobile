import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SignOutUsecase extends FNPUC<bool> {
  final AuthRepository _repo;

  SignOutUsecase(this._repo);

  @override
  Future<Either<Failure, bool>> call({HttpCallback? callback}) =>
      _repo.signOut();
}
