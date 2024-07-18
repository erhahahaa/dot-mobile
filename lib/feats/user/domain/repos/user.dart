import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class UserRepo {
  Future<Either<Failure, UserEntity>> getMe();
  Future<bool> clear();
}
