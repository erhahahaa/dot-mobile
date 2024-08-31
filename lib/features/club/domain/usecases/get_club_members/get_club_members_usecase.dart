import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_club_members_usecase.freezed.dart';
part 'get_club_members_usecase.g.dart';

@lazySingleton
class GetClubMembersUsecase
    extends FPUC<List<UserModel>, GetClubMembersParams> {
  final ClubRepository _clubRepository;

  GetClubMembersUsecase(this._clubRepository);

  @override
  Future<Either<Failure, List<UserModel>>> call(GetClubMembersParams params,
          {HttpCallback? callback}) =>
      _clubRepository.getMembers(params);
}

@freezed
class GetClubMembersParams with _$GetClubMembersParams {
  const factory GetClubMembersParams({
    required int clubId,
  }) = _GetClubMembersParams;

  factory GetClubMembersParams.fromJson(Map<String, dynamic> json) =>
      _$GetClubMembersParamsFromJson(json);
}
