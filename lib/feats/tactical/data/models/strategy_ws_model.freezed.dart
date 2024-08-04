// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_ws_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyWSModel _$StrategyWSModelFromJson(Map<String, dynamic> json) {
  return _StrategyWSModel.fromJson(json);
}

/// @nodoc
mixin _$StrategyWSModel {
  WebSocketEvent get event => throw _privateConstructorUsedError;
  StrategyWsParamModel get params => throw _privateConstructorUsedError;
  TacticalStrategicModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrategyWSModelCopyWith<StrategyWSModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyWSModelCopyWith<$Res> {
  factory $StrategyWSModelCopyWith(
          StrategyWSModel value, $Res Function(StrategyWSModel) then) =
      _$StrategyWSModelCopyWithImpl<$Res, StrategyWSModel>;
  @useResult
  $Res call(
      {WebSocketEvent event,
      StrategyWsParamModel params,
      TacticalStrategicModel data});

  $StrategyWsParamModelCopyWith<$Res> get params;
  $TacticalStrategicModelCopyWith<$Res> get data;
}

/// @nodoc
class _$StrategyWSModelCopyWithImpl<$Res, $Val extends StrategyWSModel>
    implements $StrategyWSModelCopyWith<$Res> {
  _$StrategyWSModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? params = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as WebSocketEvent,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StrategyWsParamModel,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TacticalStrategicModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StrategyWsParamModelCopyWith<$Res> get params {
    return $StrategyWsParamModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TacticalStrategicModelCopyWith<$Res> get data {
    return $TacticalStrategicModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StrategyWSModelImplCopyWith<$Res>
    implements $StrategyWSModelCopyWith<$Res> {
  factory _$$StrategyWSModelImplCopyWith(_$StrategyWSModelImpl value,
          $Res Function(_$StrategyWSModelImpl) then) =
      __$$StrategyWSModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebSocketEvent event,
      StrategyWsParamModel params,
      TacticalStrategicModel data});

  @override
  $StrategyWsParamModelCopyWith<$Res> get params;
  @override
  $TacticalStrategicModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$StrategyWSModelImplCopyWithImpl<$Res>
    extends _$StrategyWSModelCopyWithImpl<$Res, _$StrategyWSModelImpl>
    implements _$$StrategyWSModelImplCopyWith<$Res> {
  __$$StrategyWSModelImplCopyWithImpl(
      _$StrategyWSModelImpl _value, $Res Function(_$StrategyWSModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? params = null,
    Object? data = null,
  }) {
    return _then(_$StrategyWSModelImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as WebSocketEvent,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StrategyWsParamModel,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TacticalStrategicModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyWSModelImpl implements _StrategyWSModel {
  const _$StrategyWSModelImpl(
      {required this.event, required this.params, required this.data});

  factory _$StrategyWSModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyWSModelImplFromJson(json);

  @override
  final WebSocketEvent event;
  @override
  final StrategyWsParamModel params;
  @override
  final TacticalStrategicModel data;

  @override
  String toString() {
    return 'StrategyWSModel(event: $event, params: $params, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyWSModelImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event, params, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyWSModelImplCopyWith<_$StrategyWSModelImpl> get copyWith =>
      __$$StrategyWSModelImplCopyWithImpl<_$StrategyWSModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyWSModelImplToJson(
      this,
    );
  }
}

abstract class _StrategyWSModel implements StrategyWSModel {
  const factory _StrategyWSModel(
      {required final WebSocketEvent event,
      required final StrategyWsParamModel params,
      required final TacticalStrategicModel data}) = _$StrategyWSModelImpl;

  factory _StrategyWSModel.fromJson(Map<String, dynamic> json) =
      _$StrategyWSModelImpl.fromJson;

  @override
  WebSocketEvent get event;
  @override
  StrategyWsParamModel get params;
  @override
  TacticalStrategicModel get data;
  @override
  @JsonKey(ignore: true)
  _$$StrategyWSModelImplCopyWith<_$StrategyWSModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StrategyWsParamModel _$StrategyWsParamModelFromJson(Map<String, dynamic> json) {
  return _StrategyWsParamModel.fromJson(json);
}

/// @nodoc
mixin _$StrategyWsParamModel {
  int get clubId => throw _privateConstructorUsedError;
  String get channel => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrategyWsParamModelCopyWith<StrategyWsParamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyWsParamModelCopyWith<$Res> {
  factory $StrategyWsParamModelCopyWith(StrategyWsParamModel value,
          $Res Function(StrategyWsParamModel) then) =
      _$StrategyWsParamModelCopyWithImpl<$Res, StrategyWsParamModel>;
  @useResult
  $Res call({int clubId, String channel, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$StrategyWsParamModelCopyWithImpl<$Res,
        $Val extends StrategyWsParamModel>
    implements $StrategyWsParamModelCopyWith<$Res> {
  _$StrategyWsParamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? channel = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StrategyWsParamModelImplCopyWith<$Res>
    implements $StrategyWsParamModelCopyWith<$Res> {
  factory _$$StrategyWsParamModelImplCopyWith(_$StrategyWsParamModelImpl value,
          $Res Function(_$StrategyWsParamModelImpl) then) =
      __$$StrategyWsParamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId, String channel, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$StrategyWsParamModelImplCopyWithImpl<$Res>
    extends _$StrategyWsParamModelCopyWithImpl<$Res, _$StrategyWsParamModelImpl>
    implements _$$StrategyWsParamModelImplCopyWith<$Res> {
  __$$StrategyWsParamModelImplCopyWithImpl(_$StrategyWsParamModelImpl _value,
      $Res Function(_$StrategyWsParamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? channel = null,
    Object? user = null,
  }) {
    return _then(_$StrategyWsParamModelImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyWsParamModelImpl implements _StrategyWsParamModel {
  const _$StrategyWsParamModelImpl(
      {required this.clubId, required this.channel, required this.user});

  factory _$StrategyWsParamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyWsParamModelImplFromJson(json);

  @override
  final int clubId;
  @override
  final String channel;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'StrategyWsParamModel(clubId: $clubId, channel: $channel, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyWsParamModelImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clubId, channel, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyWsParamModelImplCopyWith<_$StrategyWsParamModelImpl>
      get copyWith =>
          __$$StrategyWsParamModelImplCopyWithImpl<_$StrategyWsParamModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyWsParamModelImplToJson(
      this,
    );
  }
}

abstract class _StrategyWsParamModel implements StrategyWsParamModel {
  const factory _StrategyWsParamModel(
      {required final int clubId,
      required final String channel,
      required final UserModel user}) = _$StrategyWsParamModelImpl;

  factory _StrategyWsParamModel.fromJson(Map<String, dynamic> json) =
      _$StrategyWsParamModelImpl.fromJson;

  @override
  int get clubId;
  @override
  String get channel;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$StrategyWsParamModelImplCopyWith<_$StrategyWsParamModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
