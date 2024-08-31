import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class ClubRemoteDatasource {
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
  Future<Either<Failure, UserToClub>> kick(
    KickClubMemberParams params,
  );
  Future<Either<Failure, String>> leave(
    LeaveClubParams params,
  );
  Future<Either<Failure, UserModel>> addMember(
    AddClubMemberParams params,
  );
}

@LazySingleton(as: ClubRemoteDatasource)
class ClubRemoteDatasourceImpl implements ClubRemoteDatasource {
  final DioService _remote;

  ClubRemoteDatasourceImpl(this._remote);

  @override
  Future<Either<Failure, UserModel>> addMember(
    AddClubMemberParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/${params.clubId}/add/${params.userId}/${params.role.name}',
      converter: (res) => UserModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> create(
    CreateClubParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.CLUB,
      formData: params.toFormData(),
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> delete(
    DeleteClubParams params,
  ) async {
    final res = await _remote.deleteRequest<ClubModel>(
      '${ListAPI.CLUB}/${params.clubId}',
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<ClubModel>>> getAll() async {
    final res = await _remote.getRequest<List<ClubModel>>(
      ListAPI.CLUB,
      converter: (res) {
        final List<ClubModel> clubs = [];
        for (final item in res['data']) {
          clubs.add(ClubModel.fromJson(item));
        }
        return clubs;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> getById(
    GetClubByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/${params.clubId}',
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<UserModel>>> getMembers(
    GetClubMembersParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/${params.clubId}/members',
      converter: (res) {
        final List<UserModel> users = [];
        for (final item in res['data']) {
          users.add(UserModel.fromJson(item));
        }
        return users;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, UserToClub>> kick(
    KickClubMemberParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/${params.clubId}/kick/${params.userId}',
      converter: (res) => UserToClub.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, String>> leave(
    LeaveClubParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/${params.clubId}/leave',
      converter: (res) => res['data']['clubId'].toString(),
    );
    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> update(
    UpdateClubParams params,
  ) async {
    final res = await _remote.putRequest(
      '${ListAPI.CLUB}/${params.id}',
      formData: params.toFormData(),
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    return res;
  }
}
