import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

class ClubRepoImpl implements ClubRepo {
  final DioClient _remote;
  final IsarClient _local;

  ClubRepoImpl(this._remote, this._local);

  @override
  Future<Either<Failure, ClubModel>> create(
    CreateClubParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.CLUB,
      formData: params.toFormData(),
      converter: (res) => ClubModel.fromJson(res['data']),
    );
    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.clubs.put(r.toEntity()),
      ),
    );
    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> delete(
    ByIdParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.CLUB}/${params.id}',
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.clubs.delete(r.id),
      ),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<ClubModel>>> getAll(
    PaginationParams params,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.CLUB,
      converter: (res) {
        final List<ClubModel> clubs = [];
        for (final item in res['data']) {
          clubs.add(ClubModel.fromJson(item));
        }
        return clubs;
      },
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async {
          _local.clubs.clear();
          for (final club in r) {
            _local.clubs.put(club.toEntity());
          }
        },
      ),
    );

    return res;
  }

  @override
  Future<Either<Failure, ClubModel>> getById(
    ByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/${params.id}',
      converter: (res) => ClubModel.fromJson(res['data']),
    );

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.clubs.put(r.toEntity()),
      ),
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

    res.fold(
      (l) => null,
      (r) => _local.isar.writeTxn(
        () async => _local.clubs.put(r.toEntity()),
      ),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<UserModel>>> getMembers(
    PaginationParams params,
    int clubId,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/$clubId/members',
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
  Future<Either<Failure, UserModel>> kick(
    int clubId,
    int userId,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/$clubId/kick/$userId',
      converter: (res) => UserModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, UserModel>> addUser(
    int clubId,
    int userId,
    UserRole role,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/$clubId/add/$userId/${role.name}',
      converter: (res) => UserModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, String>> leave(
    int clubId,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.CLUB}/$clubId/leave',
      converter: (res) => res['data']['clubId'].toString(),
    );

    return res;
  }
}
