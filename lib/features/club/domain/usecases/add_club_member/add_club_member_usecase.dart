import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_club_member_usecase.freezed.dart';
part 'add_club_member_usecase.g.dart';

@lazySingleton
class AddClubMemberUsecase extends FPUC<UserModel, AddClubMemberParams> {
  final ClubRepository _clubRepository;

  AddClubMemberUsecase(this._clubRepository);

  @override
  Future<Either<Failure, UserModel>> call(AddClubMemberParams params,
          {HttpCallback? callback}) =>
      _clubRepository.addMember(params);
}

@freezed
class AddClubMemberParams with _$AddClubMemberParams {
  const factory AddClubMemberParams({
    required int clubId,
    required int userId,
    required UserRole role,
  }) = _AddClubMemberParams;

  factory AddClubMemberParams.fromJson(Map<String, dynamic> json) =>
      _$AddClubMemberParamsFromJson(json);
}
