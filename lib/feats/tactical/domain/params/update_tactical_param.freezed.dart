// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_tactical_param.dart';

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
  TacticalBoardModel get board => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      TacticalBoardModel board,
      bool isLive});

  $TacticalBoardModelCopyWith<$Res> get board;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? board = null,
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
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as TacticalBoardModel,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TacticalBoardModelCopyWith<$Res> get board {
    return $TacticalBoardModelCopyWith<$Res>(_value.board, (value) {
      return _then(_value.copyWith(board: value) as $Val);
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
      TacticalBoardModel board,
      bool isLive});

  @override
  $TacticalBoardModelCopyWith<$Res> get board;
}

/// @nodoc
class __$$UpdateTacticalParamsImplCopyWithImpl<$Res>
    extends _$UpdateTacticalParamsCopyWithImpl<$Res, _$UpdateTacticalParamsImpl>
    implements _$$UpdateTacticalParamsImplCopyWith<$Res> {
  __$$UpdateTacticalParamsImplCopyWithImpl(_$UpdateTacticalParamsImpl _value,
      $Res Function(_$UpdateTacticalParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? board = null,
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
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as TacticalBoardModel,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTacticalParamsImpl implements _UpdateTacticalParams {
  const _$UpdateTacticalParamsImpl(
      {this.id = 0,
      this.clubId = 0,
      this.mediaId,
      this.name = '',
      this.description,
      this.board = const TacticalBoardModel(),
      this.isLive = false});

  factory _$UpdateTacticalParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTacticalParamsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int clubId;
  @override
  final int? mediaId;
  @override
  @JsonKey()
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final TacticalBoardModel board;
  @override
  @JsonKey()
  final bool isLive;

  @override
  String toString() {
    return 'UpdateTacticalParams(id: $id, clubId: $clubId, mediaId: $mediaId, name: $name, description: $description, board: $board, isLive: $isLive)';
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
            (identical(other.isLive, isLive) || other.isLive == isLive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, clubId, mediaId, name, description, board, isLive);

  @JsonKey(ignore: true)
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

abstract class _UpdateTacticalParams implements UpdateTacticalParams {
  const factory _UpdateTacticalParams(
      {final int id,
      final int clubId,
      final int? mediaId,
      final String name,
      final String? description,
      final TacticalBoardModel board,
      final bool isLive}) = _$UpdateTacticalParamsImpl;

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
  TacticalBoardModel get board;
  @override
  bool get isLive;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTacticalParamsImplCopyWith<_$UpdateTacticalParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
