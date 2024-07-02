import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/features.dart';

class UserRepoImpl implements UserRepo {
  final DioClient _remote;
  final IsarClient _local;

  UserRepoImpl(this._remote, this._local);

  @override
  Future<Either<Failure, UserEntity>> getUser(
    int id,
  ) async {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
