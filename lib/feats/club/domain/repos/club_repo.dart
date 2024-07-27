import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/errors/errors.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class ClubRepo {
  Future<Either<Failure, List<ClubModel>>> getAll(
    PaginationParams params,
  );
  Future<Either<Failure, ClubModel>> getById(
    ByIdParams params,
  );
  Future<Either<Failure, ClubModel>> create(
    CreateClubParams params,
  );
  Future<Either<Failure, ClubModel>> update(
    UpdateClubParams params,
  );
  Future<Either<Failure, ClubModel>> delete(
    ByIdParams params,
  );
  Future<Either<Failure, List<UserModel>>> getMembers(
    PaginationParams params,
    int clubId,
  );

  Future<Either<Failure, UserModel>> kick(
    int clubId,
    int userId,
  );
}
