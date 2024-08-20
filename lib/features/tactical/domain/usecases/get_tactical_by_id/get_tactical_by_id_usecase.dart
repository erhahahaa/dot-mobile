import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_tactical_by_id_usecase.freezed.dart';
part 'get_tactical_by_id_usecase.g.dart';

@lazySingleton
class GetTacticalByIdUsecase
    extends FPUC<TacticalModel, GetTacticalByIdParams> {
  final TacticalRepository _tacticalRepository;

  GetTacticalByIdUsecase(this._tacticalRepository);

  @override
  Future<Either<Failure, TacticalModel>> call(GetTacticalByIdParams params,
          {HttpCallback? callback}) =>
      _tacticalRepository.getById(params);
}

@freezed
class GetTacticalByIdParams with _$GetTacticalByIdParams {
  const factory GetTacticalByIdParams({
    required int tacticalId,
  }) = _GetTacticalByIdParams;

  factory GetTacticalByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetTacticalByIdParamsFromJson(json);
}
