import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_tactical_usecase.freezed.dart';
part 'delete_tactical_usecase.g.dart';

@lazySingleton
class DeleteTacticalUsecase extends FPUC<TacticalModel, DeleteTacticalParams> {
  final TacticalRepository _tacticalRepository;

  DeleteTacticalUsecase(this._tacticalRepository);

  @override
  Future<Either<Failure, TacticalModel>> call(DeleteTacticalParams params,
          {HttpCallback? callback}) =>
      _tacticalRepository.delete(params);
}

@freezed
class DeleteTacticalParams with _$DeleteTacticalParams {
  const factory DeleteTacticalParams({
    required int tacticalId,
  }) = _DeleteTacticalParams;

  factory DeleteTacticalParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteTacticalParamsFromJson(json);
}
