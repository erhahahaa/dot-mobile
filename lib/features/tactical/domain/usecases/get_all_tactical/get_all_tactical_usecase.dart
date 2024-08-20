import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_tactical_usecase.freezed.dart';
part 'get_all_tactical_usecase.g.dart';

@lazySingleton
class GetAllTacticalUsecase
    extends FPUC<List<TacticalModel>, GetAllTacticalParams> {
  final TacticalRepository _tacticalRepository;

  GetAllTacticalUsecase(this._tacticalRepository);

  @override
  Future<Either<Failure, List<TacticalModel>>> call(GetAllTacticalParams params,
          {HttpCallback? callback}) =>
      _tacticalRepository.getAll(params);
}

@freezed
class GetAllTacticalParams with _$GetAllTacticalParams {
  const factory GetAllTacticalParams({
    required int clubId,
  }) = _GetAllTacticalParams;

  factory GetAllTacticalParams.fromJson(Map<String, dynamic> json) =>
      _$GetAllTacticalParamsFromJson(json);
}
