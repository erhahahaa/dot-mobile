import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_club_by_id_usecase.freezed.dart';
part 'get_club_by_id_usecase.g.dart';

@lazySingleton
class GetClubByIdUsecase extends FPUC<ClubModel, GetClubByIdParams> {
  final ClubRepository _clubRepository;

  GetClubByIdUsecase(this._clubRepository);

  @override
  Future<Either<Failure, ClubModel>> call(GetClubByIdParams params,
          {HttpCallback? callback}) =>
      _clubRepository.getById(params);
}

@freezed
class GetClubByIdParams with _$GetClubByIdParams {
  const factory GetClubByIdParams({
    required int clubId,
  }) = _GetClubByIdParams;

  factory GetClubByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetClubByIdParamsFromJson(json);
}
