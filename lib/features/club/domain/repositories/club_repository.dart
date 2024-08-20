import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class ClubRepository {
  Future<Either<Failure, List<ClubModel>>> getAll();
  Future<Either<Failure, ClubModel>> getById(
    GetClubByIdParams params,
  );
  Future<Either<Failure, ClubModel>> create(
    CreateClubParams params,
  );
  Future<Either<Failure, ClubModel>> update(
    UpdateClubParams params,
  );
  Future<Either<Failure, ClubModel>> delete(
    DeleteClubParams params,
  );
  Future<Either<Failure, List<UserModel>>> getMembers(
    GetClubMembersParams params,
  );

  Future<Either<Failure, UserToClub>> kickMember(
    KickClubMemberParams params,
  );

  Future<Either<Failure, String>> leaveClub(
    LeaveClubParams params,
  );

  Future<Either<Failure, UserModel>> addMember(
    AddClubMemberParams params,
  );
}
