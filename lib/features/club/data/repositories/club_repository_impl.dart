import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ClubRepository)
class ClubRepositoryImpl implements ClubRepository {
  final ClubRemoteDatasource _remote;

  ClubRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, UserModel>> addMember(
    AddClubMemberParams params,
  ) async {
    final res = await _remote.addMember(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, ClubModel>> create(
    CreateClubParams params,
  ) async {
    final res = await _remote.create(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, ClubModel>> delete(
    DeleteClubParams params,
  ) async {
    final res = await _remote.delete(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, List<ClubModel>>> getAll() async {
    final res = await _remote.getAll();

    return res.fold(
      (failure) => Left(failure),
      (success) {
        if (success.isEmpty) {
          return Left(NoContentFailure('No clubs found'));
        }
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, ClubModel>> getById(
    GetClubByIdParams params,
  ) async {
    final res = await _remote.getById(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, List<UserModel>>> getMembers(
    GetClubMembersParams params,
  ) async {
    final res = await _remote.getMembers(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, UserToClub>> kickMember(
    KickClubMemberParams params,
  ) async {
    final res = await _remote.kick(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, String>> leaveClub(
    LeaveClubParams params,
  ) async {
    final res = await _remote.leave(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, ClubModel>> update(
    UpdateClubParams params,
  ) async {
    final res = await _remote.update(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }
}
