// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_tactical_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTacticalParams _$UpdateTacticalParamsFromJson(Map<String, dynamic> json) {
  return _UpdateTacticalParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateTacticalParams {
  int get id => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  int? get mediaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TacticalBoardModel? get board => throw _privateConstructorUsedError;
  TacticalStrategicModel? get strategic => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError;

  /// Serializes this UpdateTacticalParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTacticalParamsCopyWith<UpdateTacticalParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTacticalParamsCopyWith<$Res> {
  factory $UpdateTacticalParamsCopyWith(UpdateTacticalParams value,
          $Res Function(UpdateTacticalParams) then) =
      _$UpdateTacticalParamsCopyWithImpl<$Res, UpdateTacticalParams>;
  @useResult
  $Res call(
      {int id,
      int clubId,
      int? mediaId,
      String name,
      String? description,
      TacticalBoardModel? board,
      TacticalStrategicModel? strategic,
      bool isLive});

  $TacticalBoardModelCopyWith<$Res>? get board;
  $TacticalStrategicModelCopyWith<$Res>? get strategic;
}

/// @nodoc
class _$UpdateTacticalParamsCopyWithImpl<$Res,
        $Val extends UpdateTacticalParams>
    implements $UpdateTacticalParamsCopyWith<$Res> {
  _$UpdateTacticalParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? board = freezed,
    Object? strategic = freezed,
    Object? isLive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      board: freezed == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as TacticalBoardModel?,
      strategic: freezed == strategic
          ? _value.strategic
          : strategic // ignore: cast_nullable_to_non_nullable
              as TacticalStrategicModel?,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of UpdateTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticalBoardModelCopyWith<$Res>? get board {
    if (_value.board == null) {
      return null;
    }

    return $TacticalBoardModelCopyWith<$Res>(_value.board!, (value) {
      return _then(_value.copyWith(board: value) as $Val);
    });
  }

  /// Create a copy of UpdateTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticalStrategicModelCopyWith<$Res>? get strategic {
    if (_value.strategic == null) {
      return null;
    }

    return $TacticalStrategicModelCopyWith<$Res>(_value.strategic!, (value) {
      return _then(_value.copyWith(strategic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateTacticalParamsImplCopyWith<$Res>
    implements $UpdateTacticalParamsCopyWith<$Res> {
  factory _$$UpdateTacticalParamsImplCopyWith(_$UpdateTacticalParamsImpl value,
          $Res Function(_$UpdateTacticalParamsImpl) then) =
      __$$UpdateTacticalParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int clubId,
      int? mediaId,
      String name,
      String? description,
      TacticalBoardModel? board,
      TacticalStrategicModel? strategic,
      bool isLive});

  @override
  $TacticalBoardModelCopyWith<$Res>? get board;
  @override
  $TacticalStrategicModelCopyWith<$Res>? get strategic;
}

/// @nodoc
class __$$UpdateTacticalParamsImplCopyWithImpl<$Res>
    extends _$UpdateTacticalParamsCopyWithImpl<$Res, _$UpdateTacticalParamsImpl>
    implements _$$UpdateTacticalParamsImplCopyWith<$Res> {
  __$$UpdateTacticalParamsImplCopyWithImpl(_$UpdateTacticalParamsImpl _value,
      $Res Function(_$UpdateTacticalParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? board = freezed,
    Object? strategic = freezed,
    Object? isLive = null,
  }) {
    return _then(_$UpdateTacticalParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      board: freezed == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as TacticalBoardModel?,
      strategic: freezed == strategic
          ? _value.strategic
          : strategic // ignore: cast_nullable_to_non_nullable
              as TacticalStrategicModel?,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTacticalParamsImpl extends _UpdateTacticalParams {
  const _$UpdateTacticalParamsImpl(
      {required this.id,
      required this.clubId,
      required this.mediaId,
      required this.name,
      required this.description,
      required this.board,
      required this.strategic,
      required this.isLive})
      : super._();

  factory _$UpdateTacticalParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTacticalParamsImplFromJson(json);

  @override
  final int id;
  @override
  final int clubId;
  @override
  final int? mediaId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final TacticalBoardModel? board;
  @override
  final TacticalStrategicModel? strategic;
  @override
  final bool isLive;

  @override
  String toString() {
    return 'UpdateTacticalParams(id: $id, clubId: $clubId, mediaId: $mediaId, name: $name, description: $description, board: $board, strategic: $strategic, isLive: $isLive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTacticalParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.strategic, strategic) ||
                other.strategic == strategic) &&
            (identical(other.isLive, isLive) || other.isLive == isLive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, clubId, mediaId, name,
      description, board, strategic, isLive);

  /// Create a copy of UpdateTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTacticalParamsImplCopyWith<_$UpdateTacticalParamsImpl>
      get copyWith =>
          __$$UpdateTacticalParamsImplCopyWithImpl<_$UpdateTacticalParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTacticalParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateTacticalParams extends UpdateTacticalParams {
  const factory _UpdateTacticalParams(
      {required final int id,
      required final int clubId,
      required final int? mediaId,
      required final String name,
      required final String? description,
      required final TacticalBoardModel? board,
      required final TacticalStrategicModel? strategic,
      required final bool isLive}) = _$UpdateTacticalParamsImpl;
  const _UpdateTacticalParams._() : super._();

  factory _UpdateTacticalParams.fromJson(Map<String, dynamic> json) =
      _$UpdateTacticalParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get clubId;
  @override
  int? get mediaId;
  @override
  String get name;
  @override
  String? get description;
  @override
  TacticalBoardModel? get board;
  @override
  TacticalStrategicModel? get strategic;
  @override
  bool get isLive;

  /// Create a copy of UpdateTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTacticalParamsImplCopyWith<_$UpdateTacticalParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
