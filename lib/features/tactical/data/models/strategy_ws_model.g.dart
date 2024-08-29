// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_ws_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyWSModelImpl _$$StrategyWSModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyWSModelImpl(
      event: $enumDecode(_$WebSocketEventEnumMap, json['event']),
      params:
          StrategyWsParamModel.fromJson(json['params'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : TacticalStrategicModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StrategyWSModelImplToJson(
        _$StrategyWSModelImpl instance) =>
    <String, dynamic>{
      'event': _$WebSocketEventEnumMap[instance.event]!,
      'params': instance.params,
      'data': instance.data,
    };

const _$WebSocketEventEnumMap = {
  WebSocketEvent.join: 'join',
  WebSocketEvent.leave: 'leave',
  WebSocketEvent.message: 'message',
  WebSocketEvent.destroy: 'destroy',
};

_$StrategyWsParamModelImpl _$$StrategyWsParamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyWsParamModelImpl(
      clubId: (json['clubId'] as num).toInt(),
      channel: json['channel'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StrategyWsParamModelImplToJson(
        _$StrategyWsParamModelImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'channel': instance.channel,
      'user': instance.user,
    };
