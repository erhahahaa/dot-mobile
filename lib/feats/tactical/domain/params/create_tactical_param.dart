import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_tactical_param.freezed.dart';
part 'create_tactical_param.g.dart';

@freezed
class CreateTacticalParams with _$CreateTacticalParams {
  const factory CreateTacticalParams({
    @Default(0) int clubId,
    int? mediaId,
    @Default('') String name,
    String? description,
    @Default(TacticalBoardModel()) TacticalBoardModel board,
    TacticalStrategicModel? strategic,
    @Default(false) bool isLive,
  }) = _CreateTacticalParams;

  factory CreateTacticalParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTacticalParamsFromJson(json);
}
