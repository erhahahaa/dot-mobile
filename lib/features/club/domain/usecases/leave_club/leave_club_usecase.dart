import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'leave_club_usecase.freezed.dart';
part 'leave_club_usecase.g.dart';

@lazySingleton
class LeaveClubUsecase extends FPUC<String, LeaveClubParams> {
  final ClubRepository _clubRepository;

  LeaveClubUsecase(this._clubRepository);

  @override
  Future<Either<Failure, String>> call(LeaveClubParams params,
          {HttpCallback? callback}) =>
      _clubRepository.leaveClub(params);
}

@freezed
class LeaveClubParams with _$LeaveClubParams {
  const factory LeaveClubParams({
    required int clubId,
  }) = _LeaveClubParams;

  factory LeaveClubParams.fromJson(Map<String, dynamic> json) =>
      _$LeaveClubParamsFromJson(json);
}
