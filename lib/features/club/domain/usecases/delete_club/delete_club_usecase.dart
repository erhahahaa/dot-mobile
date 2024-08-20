import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_club_usecase.freezed.dart';
part 'delete_club_usecase.g.dart';

@lazySingleton
class DeleteClubUsecase extends FPUC<ClubModel, DeleteClubParams> {
  final ClubRepository _clubRepository;

  DeleteClubUsecase(this._clubRepository);

  @override
  Future<Either<Failure, ClubModel>> call(DeleteClubParams params,
          {HttpCallback? callback}) =>
      _clubRepository.delete(params);
}

@freezed
class DeleteClubParams with _$DeleteClubParams {
  const factory DeleteClubParams({
    required int clubId,
  }) = _DeleteClubParams;

  factory DeleteClubParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteClubParamsFromJson(json);
}
