import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_tactical_param.freezed.dart';
part 'update_tactical_param.g.dart';

@freezed
class UpdateTacticalParams with _$UpdateTacticalParams {
  const factory UpdateTacticalParams({
    @Default(0) int id,
    @Default(0) int clubId,
    int? mediaId,
    @Default('') String name,
    String? description,
    @Default(TacticalBoardModel()) TacticalBoardModel board,
    @Default(false) bool isLive,
  }) = _UpdateTacticalParams;

  factory UpdateTacticalParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateTacticalParamsFromJson(json);
}
