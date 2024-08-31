import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'kick_club_member_usecase.freezed.dart';
part 'kick_club_member_usecase.g.dart';

@lazySingleton
class KickClubMemberUsecase extends FPUC<UserToClub, KickClubMemberParams> {
  final ClubRepository _clubRepository;

  KickClubMemberUsecase(this._clubRepository);

  @override
  Future<Either<Failure, UserToClub>> call(KickClubMemberParams params,
          {HttpCallback? callback}) =>
      _clubRepository.kickMember(params);
}

@freezed
class KickClubMemberParams with _$KickClubMemberParams {
  const factory KickClubMemberParams({
    required int clubId,
    required int userId,
  }) = _KickClubMemberParams;

  factory KickClubMemberParams.fromJson(Map<String, dynamic> json) =>
      _$KickClubMemberParamsFromJson(json);
}
