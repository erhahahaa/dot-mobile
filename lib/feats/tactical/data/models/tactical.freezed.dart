// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tactical.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TacticalModel _$TacticalModelFromJson(Map<String, dynamic> json) {
  return _TacticalModel.fromJson(json);
}

/// @nodoc
mixin _$TacticalModel {
  int get id => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  String get sportType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TacticalModelCopyWith<TacticalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalModelCopyWith<$Res> {
  factory $TacticalModelCopyWith(
          TacticalModel value, $Res Function(TacticalModel) then) =
      _$TacticalModelCopyWithImpl<$Res, TacticalModel>;
  @useResult
  $Res call(
      {int id,
      int clubId,
      String sportType,
      String name,
      String description,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$TacticalModelCopyWithImpl<$Res, $Val extends TacticalModel>
    implements $TacticalModelCopyWith<$Res> {
  _$TacticalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? sportType = null,
    Object? name = null,
    Object? description = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      sportType: null == sportType
          ? _value.sportType
          : sportType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TacticalModelImplCopyWith<$Res>
    implements $TacticalModelCopyWith<$Res> {
  factory _$$TacticalModelImplCopyWith(
          _$TacticalModelImpl value, $Res Function(_$TacticalModelImpl) then) =
      __$$TacticalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int clubId,
      String sportType,
      String name,
      String description,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$TacticalModelImplCopyWithImpl<$Res>
    extends _$TacticalModelCopyWithImpl<$Res, _$TacticalModelImpl>
    implements _$$TacticalModelImplCopyWith<$Res> {
  __$$TacticalModelImplCopyWithImpl(
      _$TacticalModelImpl _value, $Res Function(_$TacticalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? sportType = null,
    Object? name = null,
    Object? description = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TacticalModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      sportType: null == sportType
          ? _value.sportType
          : sportType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticalModelImpl implements _TacticalModel {
  const _$TacticalModelImpl(
      {this.id = 0,
      this.clubId = 0,
      this.sportType = '',
      this.name = '',
      this.description = '',
      this.createdAt,
      this.updatedAt});

  factory _$TacticalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final String sportType;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TacticalModel(id: $id, clubId: $clubId, sportType: $sportType, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.sportType, sportType) ||
                other.sportType == sportType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, clubId, sportType, name,
      description, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalModelImplCopyWith<_$TacticalModelImpl> get copyWith =>
      __$$TacticalModelImplCopyWithImpl<_$TacticalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticalModelImplToJson(
      this,
    );
  }
}

abstract class _TacticalModel implements TacticalModel {
  const factory _TacticalModel(
      {final int id,
      final int clubId,
      final String sportType,
      final String name,
      final String description,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$TacticalModelImpl;

  factory _TacticalModel.fromJson(Map<String, dynamic> json) =
      _$TacticalModelImpl.fromJson;

  @override
  int get id;
  @override
  int get clubId;
  @override
  String get sportType;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TacticalModelImplCopyWith<_$TacticalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
