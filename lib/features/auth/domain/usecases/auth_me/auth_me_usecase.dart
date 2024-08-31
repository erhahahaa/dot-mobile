import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthMeUsecase extends FNPUC<UserModel> {
  final AuthRepository _repo;

  AuthMeUsecase(this._repo);

  @override
  Future<Either<Failure, UserModel>> call({HttpCallback? callback}) =>
      _repo.me();
}
