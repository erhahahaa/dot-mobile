import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'strategy_ws_model.freezed.dart';
part 'strategy_ws_model.g.dart';

enum WebSocketEvent {
  @JsonValue('join')
  join,
  @JsonValue('leave')
  leave,
  @JsonValue('message')
  message,
}

@freezed
class StrategyWSModel with _$StrategyWSModel {
  const factory StrategyWSModel({
    required WebSocketEvent event,
    required StrategyWsParamModel params,
    required TacticalStrategicModel data,
  }) = _StrategyWSModel;

  factory StrategyWSModel.fromJson(Map<String, dynamic> json) =>
      _$StrategyWSModelFromJson(json);
}

@freezed
class StrategyWsParamModel with _$StrategyWsParamModel {
  const factory StrategyWsParamModel({
    required int clubId,
    required String channel,
    required UserModel user,
  }) = _StrategyWsParamModel;

  factory StrategyWsParamModel.fromJson(Map<String, dynamic> json) =>
      _$StrategyWsParamModelFromJson(json);
}
